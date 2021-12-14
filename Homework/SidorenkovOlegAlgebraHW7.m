%% Sidorenkov Oleg Algebra HW 7.


%% Task 1.
clear;
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];

[v, z, u] = svd(A);
x = v * z ^ -1 * u' * b


%% Task 2.
clear;
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];

r = chol(A);
l = chol(A, 'lower');
y = l\b;
x = r\y



%% Task 3.
clear;
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];

tau = 0.1;
x = [0; 0; 0];
n = 250;
for i=1:n
    r = b - A * x;
    x = x + r * tau;
end

x


%% Task 4.
clear;
A = [6 4 0; 1 3 1; 1 1 3];
b = [16; 4; 0];
x0 = [0; 0; 0];
n = 2000;
eps = 0.00001;
sz = size(b);

for i=1:sz(1)
    for j=1:sz(1)
        beta(i) = b(i) / A(i, i);
        if(i == j)
            newA(i, j) = 0;
            continue
        end
        newA(i, j) = -A(i, j) / A(i, i);
    end
end

x1 = x0;
nCount = 0;
beta = beta';

while(true)
    nCount = nCount + 1;
    x1 = beta + newA * x0;
    max = abs(x0(1) - x1(1));
    SZ = size(x0);
    for i=2:SZ(1)
        if(abs(x0(i) - x1(i)) > max)
            max = abs(x0(i) - x1(i));
        end
    end
    if((max < eps) || (nCount > n))
        x = x1;
        break;
    end
    x0 = x1;
end

x


%% Task 5.
clear;
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x0 = [0; 0; 0];
n = 2000;
eps = 0.00001;
sz = size(b);
F = A' * A;
H = A' * b;

for i=1:sz(1)
    for j=1:sz(1)
        beta(i) = H(i) / F(i, i);
        if(i == j)
            newA(i, j) = 0;
            continue
        end
        newA(i, j) = -F(i, j) / F(i, i);
    end
end

x1 = x0;
nCount = 0;
beta = beta';

while(true)
    nCount = nCount + 1;
    x1 = beta + newA * x0;
    max = abs(x0(1) - x1(1));
    SZ = size(x0);
    for i=1:SZ(1)
        s = 0;
        for j=1:SZ(1)
            s = s + newA(i, j) * x1(j);
        end
        x1(i) = beta(i) + s;
    end
    max = abs(x0(1) - x1(1));
    for i=2:length(x0)
        if(abs(x0(i) - x1(i)) > max)
            max = abs(x0(i) - x1(i));
        end
    end
    if((max < eps) || (nCount > n))
        x = x1;
        break;
    end
    x0 = x1;
end

x


%% Task 6.
clear;
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x0 = [0; 0; 0];
n = 2000;
eps = 0.00001;
sz = size(b);
F = A' * A;
H = A' * b;
w = 1.4;

for i=1:sz(1)
    for j=1:sz(1)
        beta(i) = H(i) / F(i, i);
        if(i == j)
            newA(i, j) = 0;
            continue
        end
        newA(i, j) = -F(i, j) / F(i, i);
    end
end

x1 = x0;
nCount = 0;
beta = beta';

while(true)
    nCount = nCount + 1;
    x1 = beta + newA * x0;
    max = abs(x0(1) - x1(1));
    SZ = size(x0);
    for i=1:SZ(1)
        s = 0;
        for j=1:SZ(1)
            s = s + newA(i, j) * x1(j);
        end
        x1(i) = beta(i) + s + (w - 1) * (beta(i) + s - x0(i));
    end
    max = abs(x0(1) - x1(1));
    for i=2:length(x0)
        if(abs(x0(i) - x1(i)) > max)
            max = abs(x0(i) - x1(i));
        end
    end
    if((max < eps) || (nCount > n))
        x = x1;
        break;
    end
    x0 = x1;
end

x


%% Task 7.
clear;
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x = b;
n = 2000;
eps = 0.00001;
nCount = 0;

while(true)
    nCount = nCount + 1;
    r = A * x - b;
    M = dot(r, A * A' * r) / dot(A * A' * r, A * A' * r);
    x = x - M * A' * r;
    if(abs(r) < eps)
        break;
    end
    if(nCount > n)
        break;
    end
end

x


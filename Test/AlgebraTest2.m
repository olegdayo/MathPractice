%% Algebra Test 2.


%% Task 1.
a = [2; 4; 5; 7];
b = [1; 3; 6];
c = a * b'


%% Task 2.
a = [3; 4; 5];
b = [8; 4; -2];
axb = cross(a, b)


%% Task 3.
a = [1 2 2];
b = [3 3 4];
c = [5 5 5];
parallelepipedVolume = dot(a, cross(b, c))


%% Task 4.
A = [4 8 12; 2 -3 -8];
b = [24; 32];
[q, r] = qr(A)
x = r\(q' * b)


%% Task 5.
A = [2 3 3; -2 -3 3];
b = [9; 1];
answer = linsolve(A, b)


%% Task 6.
A = [3 5 4; 2 4 5; 5 3 1];
b = [10; 6; 2];

% Looks ok.
tryAnswer = A\b
% It is not so big, so matrix is usual.
condition = cond(A)

% Same answer.
linsolve(A, b)

extendedM = [A b];
differentThings = rref(extendedM);
neededAns = differentThings(:, end);
% And yeah, all answers match.
neededAns


%% Task 7.
A = [3 1 2; 1 3 1; 1 1 3];
b = [3; 8; 2];

tau = 0.1;
x = [0; 0; 0];
n = 41;
epsilon = 0.001
for i=1:n
    r = b - A * x;
    x = x + r * tau;
end
x
answer = A\b
areAnswersEqual = x - answer < epsilon
isAnswerGood = A * x - b < epsilon
% 41 iterations are enough for epsilon = 0.001.


%% Task 8.
A = [3 2 1; 2 3 2; 1 2 5];
b = [3; 8; 2];
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
answer = A\b
areAnswersEqual = x - answer < eps
isAnswerGood = A * x - b < eps
display(nCount)


%% Task 9.
iRows = [1 1 2 2 3 5 5];
jCols = [1 3 2 5 3 1 2];
nElems = [5 -3 -2 2 1 9 7];

A = sparse(iRows, jCols, nElems, 5, 6)
fullA = full(A)

whos A fullA

% A is quite lighter than fullA now.


%% Task 10.
A = [5 0 -3 0 0 0;
    0 -2 0 0 2 0;
    0 1 0 0 0 0;
    0 0 0 0 0 0;
    9 7 0 0 0 0
    ];

AN = sparse(A)

[iRows, jCols, nElems] = find(AN)


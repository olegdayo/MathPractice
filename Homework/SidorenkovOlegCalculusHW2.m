%% Sidorenkov Oleg Vladimirovich matan seminar 2.


%% Task 1.
% A
options=optimset('Display','iter');
x0 = [1;1];
[x, fval] = fsolve(@FirstTaskEqA, x0, options)


% B
options=optimset('Display','iter');
x0 = [3;3;3];
[x, fval] = fsolve(@FirstTaskEqB, x0, options)


%% Task 2.
syms x;
limit((10 + x) ^ (1 / x), x, 0, 'left')
limit((10 + x) ^ (1 / x), x, 0, 'right')


%% Task 3.
syms x0;
diff(atan(x), x)
limit((atan(x0 + x) - atan(x0)) / (x), x, 0)


%% Task 4.
limit((9 * x ^ 2 - 1) / (x + 1/3), x, -1/3)


%% Task 5.
diff((3 * cos(5 * x ^ 2)) ^ 3, x)


%% Task 6.
syms x;
syms y;
syms z;
f1 = sin(x + 2 * y) + 2 * sqrt(x * y * z);
f2 = log(3 - x ^ 2) + x * y ^ 2 * z;
f3 = x ^ 2 - atan(y + z ^ 3);
f4 = x ^ 3 * y ^ 2 * z + 3 * x - 5 * y + z + 2;


% f1.
diff(f1, x, 2)
diff(f1, y, 2)
diff(f1, z, 2)


diff(diff(f1, x), y)
diff(diff(f1, y), x)
diff(diff(f1, x), z)
diff(diff(f1, z), x)
diff(diff(f1, y), z)
diff(diff(f1, z), y)


% f2.
diff(f2, x, 2)
diff(f2, y, 2)
diff(f2, z, 2)


diff(diff(f2, x), y)
diff(diff(f2, y), x)
diff(diff(f2, x), z)
diff(diff(f2, z), x)
diff(diff(f2, y), z)
diff(diff(f2, z), y)


% f3.
diff(f3, x, 2)
diff(f3, y, 2)
diff(f3, z, 2)


diff(diff(f3, x), y)
diff(diff(f3, y), x)
diff(diff(f3, x), z)
diff(diff(f3, z), x)
diff(diff(f3, y), z)
diff(diff(f3, z), y)


% f4.
diff(f4, x, 2)
diff(f4, y, 2)
diff(f4, z, 2)


diff(diff(f4, x), y)
diff(diff(f4, y), x)
diff(diff(f4, x), z)
diff(diff(f4, z), x)
diff(diff(f4, y), z)
diff(diff(f4, z), y)


%% Task 7.
limit(sin(x) / x, x, 0)
limit((1 - exp(-x)) / x, x, Inf)
limit((1 - x) / log(x), x, 1)


%% Task 8.
syms x;
f = (x ^ 2) * cos(2 * x);
for i = 1 : 5
    f = diff(f);
end
f


%% Task 9.
limit(1 - exp(-x / x), x, Inf)


%% Task 10.
syms a;
syms n;
syms x;
diff(exp(-a * x ^ 5) + log(a ^ n + x ^ a) - a * n / (x ^ 3), x)
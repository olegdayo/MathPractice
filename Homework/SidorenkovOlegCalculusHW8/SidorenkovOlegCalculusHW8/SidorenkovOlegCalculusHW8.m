%% Sidorenkov Oleg Calculus HW 8.


%% Task 1.
syms x;
fun = str2sym('1 / (1 + x)');
taylorFun = taylor(fun, x);
display('Taylor:')
pretty(taylorFun)


%% Task 2.
syms x y;
funny = str2sym('1 / (x + y)');
taylorFunny = taylor(funny, x, 'Order', 7);
display('Taylor x:')
pretty(taylorFunny)
taylorFunny = taylor(funny, y, 'Order', 7);
display('Taylor y:')
pretty(taylorFunny)


%% Task 3.
syms x;
funnyFun = str2sym('x * sin(x)');
taylorFunnyFun = taylor(funnyFun, x, 2, 'Order', 10);
display('Taylor x:')
pretty(taylorFunnyFun)


%% Task 4.
syms x k;

sumMember1 = str2sym('((-1) ^ k) / (k ^ 2)');
sumK1 = symsum(sumMember1, k, 1, Inf)

sumMember2 = ((-1) ^ k) * ((x ^ (2 * k + 1)) / factorial(2 * k + 1))
sumK2 = symsum(sumMember2, k, 0, Inf)


%% Task 5.
syms n;
sumMember = str2sym('(1 / 2) * (1 - (1 / 3) ^ n)');

% Check if the row diverges.
checkFun = str2sym('((1 / 2) * (1 - (1 / 3) ^ n))');
% The limit is 1/2 > 0 -> the row does diverge.
lim = limit(checkFun, n, Inf)

sumN = symsum(sumMember, n, 0, Inf)


%% Task 6.
syms n;

sumMember1 = str2sym('0.3 ^ n');
sum1 = TheFunniestFun(sumMember1, 10)

sumMember2 = str2sym('1.5 ^ n');
sum2 = TheFunniestFun(sumMember2, 10)

sumMember3 = str2sym('1 / n');
sum3 = TheFunniestFun(sumMember3, 10)

sumMember4 = str2sym('1 / (n ^ 0.5)');
sum4 = TheFunniestFun(sumMember4, 10)

sumMember5 = str2sym('1 / (n ^ 2)');
sum5 = TheFunniestFun(sumMember5, 10)

sumMember6 = str2sym('1 / (n ^ 2 + 2 * n)');
sum6 = TheFunniestFun(sumMember6, 10)


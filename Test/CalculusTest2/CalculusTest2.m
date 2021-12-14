%% Calculus Test 2.


%% Task 1.
p = [1 0 0 0 0 3 0 1 0 -10 3];

answersX = roots(p)

answersY = polyval(p, answersX)

answer2 = polyval(p, 2)


%% Task 2.
p = [1 0 3 1 -10 -1 1];

answersX = roots(p)

answersY = polyval(p, answersX)

answer2 = polyval(p, 3)


%% Task 3.
x = 3:0.01:4;
y = myfun1(x);

figure
hold on
grid on
% Comparing both plots.
fplot(@myfun1, [3, 4])
plot(x, y)
hold off

lookfor myfun1
help myfun1


%% Task 4.
a = [1 1 0 10 0 2 3];
b = [1 0 0 0 2 1 -3];

c = conv(a, b);
poly2sym(c)


%% Task 5.
x = [0.1 0.2 0.3 0.4 0.6 0.7 1.0 1.3 1.6 2.2];
y = [-3 -4 -3 -2 -1 0 1.5 4 6.5 12];
extendedX = 0.1:0.01:2;

p4 = polyfit(x, y, 4);
p5 = polyfit(x, y, 5);
p6 = polyfit(x, y, 6);
p7 = polyfit(x, y, 7);

figure
hold on
grid on
plot(x, y)
plot(extendedX, polyval(p4, extendedX))
plot(extendedX, polyval(p5, extendedX))
plot(extendedX, polyval(p6, extendedX))
plot(extendedX, polyval(p7, extendedX))
legend('Plot', strcat(strcat('Power: 4, Polynom:', char(round(poly2sym(p4), 0)))), strcat('Power: 5, Polynom:', char(round(poly2sym(p5), 0))), strcat('Power: 6, Polynom:', char(round(poly2sym(p6), 0))), strcat('Power: 7, Polynom:', char(round(poly2sym(p7), 0))))
hold off


%% Task 6.
a = [1 0 0 0 0 2 4 2 3 3];
b = [1 0 0 0 0 -2 0 0 -3 -9];

c = a + b;

poly2sym(c)


%% Task 7.
f = @(x, y, z)exp(x) .* (sin(y)) .^ 2 + exp(-x) .* (cos(y)) .^ 2 + sin(z) .* cos(z);

triplequad(f, -pi, pi, -pi, pi, -1, 1)
integral3(f, -pi, pi, -pi, pi, -1, 1)


%% Task 8.
f = @(x)exp(x .^ 2) + cos(2 * pi * x);
newf = @(x)-exp(x .^ 2) - cos(2 * pi * x);

[x1, y1] = fminbnd(f, -1, 0.5)
[x2, y2] = fminbnd(newf, -1, 0.5)

thisIntegral = integral(f, x1, x2)

figure
hold on
grid on
fplot(f, [-1, 0.5])
hold off


%% Task 9.
syms x;
funnyFun = str2sym('x * cos(x)');
taylorFunnyFun = taylor(funnyFun, x, 3, 'Order', 5);
display('Taylor x:')
pretty(taylorFunnyFun)


%% Task 10.
syms n;

sumMember = str2sym('1 / sqrt(n ^ 3)');
ansSum = TheFunniestFun(sumMember, 10)
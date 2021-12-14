%% Sidorenkov Oleg Calculus HW 7.


%% Task 1.
clear;
f = @(x)sin(x) - x .^ 2 .* cos(x);

q = quad(f, -5, 0, 1.0e-05)
i = integral(f, -5, 0, 'RelTol', 0, 'AbsTol', 1.0e-05)


%% Task 2.
clear;
f = @(x)x .^ 3 + 1;

q = quad(f, 1, 4, 1.0e-05)
i = integral(f, 1, 4)


%% Task 3.
clear;
f = @(x, y)exp(-x) .* sin(y);

dblquad(f, -pi, pi, 0, 1)
integral2(f, -pi, pi, 0, 1)


%% Task 4.
clear;
f = @(x, y)sin(x) .* cos(y) .* (1 - y .^ 2) .* x .* (1 - x);
integral2(f, -2, 2, -2, 2)

clear;

[x, y] = meshgrid(-2:0.1:2);
f = sin(x) .* cos(y) .* (1 - y .^ 2) .* x .* (1 - x);

figure
hold on
grid on
surf(x, y, f)
view(39, 39)
hold off


%% Task 5.
clear;
f = @(x, y, z)exp(-x) .* sin(y) .* cos(z);

triplequad(f, -pi, pi, -2 * pi, pi, 0, 2)
integral3(f, -pi, pi, -2 * pi, pi, 0, 2)


%% Task 6.
clear;
f = @(x, y, z)exp(x) .* (sin(y)) .^ 2 + exp(-x) .* (cos(y)) .^ 2 + sin(y) .* cos(x) .* y;

triplequad(f, -2 * pi, 2 * pi, -2 * pi, 2 * pi, -4, 4)
integral3(f, -2 * pi, 2 * pi, -2 * pi, 2 * pi, -4, 4)


%% Task 7.
clear;
f = @(x)1 ./ x;

qS = quad(f, 0, 1)
qL = quadl(f, 0, 1)
qGK = quadgk(f, 0, 1)
normalIntegral = integral(f, 0, 1)


%% Task 8.
clear;
a = 20;
b = 7;
f = @(x, y)a .* cos(x) .* x .^ 2 + b .* sin(y) .* y .^ 2;

integral2(f, -2, 2, -2, 2)


%% Task 9.
clear;
a = 3;
f = inline('a .* x .^ 2 + x + 1', 'x', 'a');

quad(f, 0, 10, 1e-05, 0, a)


%% Task 10.
clear;
f = @(y)quad('exp(x) .* (sin(x) - cos(x))', 0, y);
x = f(2)

figure
hold on
grid on
fplot(f)
hold off


%% Task 11.
clear;
f = @(x)cos(x - sqrt(2)) .* exp(2 .* sin(x)) - 1;

root1 = fzero(f, [0, 2])
root2 = fzero(f, [2, 4])

integral(f, root1, root2)


%% Task 12.
clear;
f = @(x)sin(x) - x .^ 2 .* (cos(x));
newf = @(x)-sin(x) + x .^ 2 .* (cos(x));

[x1, y1] = fminbnd(f, -5, 0)
[x2, y2] = fminbnd(newf, -5, 0)

tryIntegral = integral(f, x1, x2)

figure
hold on
grid on
fplot(f, [-5, 0])
hold off

rightIntegral = integral(f, x2, x1)


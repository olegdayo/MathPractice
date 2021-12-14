%% Sidorenkov Calculus HomeWork 5.


%% Task 1.
x = 0:0.1:5;
y = myfun1(x);

figure
hold on
grid on
plot(x, y)
hold off


%% Task 2.
x = 0:0.1:5;
y = myfun1(x);

figure
hold on
grid on
% Comparing both plots.
fplot(@myfun1, [0, 5])
plot(x, y)
hold off

lookfor myfun1
help myfun1


%% Task 3.
x1 = [1 2 3];
x2 = [1 2 3 4];
x3 = [];
x4 = [1];

ans1 = evenIndexSum(x1)
ans2 = evenIndexSum(x2)
ans3 = evenIndexSum(x3)
ans4 = evenIndexSum(x4)


%% Task 4.

x = [-5, 5];
f = @myfun2;

figure
hold on
grid on
fplot(@myfun2, x)
hold off

root1 = fzero(f, [-5, -4])
root2 = fzero(f, [-2, -1])
root3 = fzero(f, [-1, 1])
root4 = fzero(f, [4, 5])


%% Task 5.
clear;

x = [-5, 5];
p = [1 0 0 0 3 1 -10 -1 1024];

answersX = roots(p)

answersY = polyval(p, answersX)


%% Task 6.
syms x;
func = inline('exp(x.^2)+sin(3*pi*x)');

figure
hold on
grid on
fplot(func(x), [-1.5 1.5])
hold off

min1 = fminbnd(func, -1, -0.5)
min2 = fminbnd(func, -0.5, 0)
min3 = fminbnd(func, 0, 1)
min4 = fminbnd(func, 1, 1.5)


%% Task 7.
sqFunc = @(x)x.^2+1;

figure
hold on
grid on
fplot(sqFunc, [-2 2])
hold off

minimum = fminbnd(sqFunc, -1, 1)


%% Task 8.
[x, y] = meshgrid(0:0.01:2);
z = sin(pi * x) .* sin(pi * y);

params = [-0.96, -0.9, -0.8, -0.5, -0.1, 0.1, 0.5, 0.8, 0.9, 0.96];
figure
hold on
grid on
[cMatr, h] = contour(x, y, z, params, 'linewidth', 1)
clabel(cMatr, h)
hold off

[extr1XY, extr1Z] = fminsearch(@lastTaskFun, [0.6, 1.4])
[extr2XY, extr2Z] = fminsearch(@lastTaskFun, [1.4, 0.6])

[extr3XY, extr3Z] = fminsearch(@lastTaskFunRev, [0.4, 0.4]);
[extr4XY, extr4Z] = fminsearch(@lastTaskFunRev, [1.6, 1.6]);

extr3XY
extr3Z = -extr3Z
extr4XY
extr4Z = -extr4Z

figure
hold on
grid on
surfl(x, y, z)
hold off
view(30, 30);


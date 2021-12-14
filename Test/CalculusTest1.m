%% Calculus Test 1.


%% Task 1.
a = [0 3 4 18 256]
x = a ~= 4


%% Task 2.
v = rand(1, 10)
[m, mIndex] = max(v);
m
mIndex


%% Task 3.
syms x n;
y = n ^ x;
diff(y, x, 3)


%% Task 4.
syms x a;
limit((1 + 1 / x) ^ (a * x), x, Inf)


%% Task 5.
syms x a;
y = a * x ^ 2 + cos(2 * x);
diff(y, x, 1)


%% Task 6.
x = -20:0.01:20;
y = 2 * sin(10 * x) .* cos(10 * x) .* x .^ 2;


% Plot.
figure
hold on
grid on
plot(x, y)
hold off


% Area.
figure
hold on
grid on
area(x, y)
hold off


% Comet.
figure
hold on
grid on
comet(x, y)
hold off


%% Task 7.
[x, y] = meshgrid(-4:0.1:4);
z = 4 * sin(2 * pi * x) .* cos(2 * pi * y) .* (1 - y .^ 2) .* y .* (1 - x);
figure
hold on
grid on
colormap('default')
view(45, 45)
surfl(x, y, z, [-90, 45])
hold off


%% Task 8.
% Wasn't sure if the task ment to use "/" or "./", so did both.


% "/"
t = 0:0.01:100;
x = (t / (1 - t)) .* sin(t);
y = (t / (1 + t)) .* cos(t);
z = t;
figure
hold on
grid on
plot3(x, y, z, "r", "LineWidth", 1)
view(-30, 30)
hold off


% "./"
t = 0:0.01:100;
x = (t ./ (1 - t)) .* sin(t);
y = (t ./ (1 + t)) .* cos(t);
z = t;
figure
hold on
grid on
plot3(x, y, z, "r", "LineWidth", 1)
view(-30, 30)
hold off


%% Task 9.
a = 1;
b = 1;
c = 2;
v = -2*pi:0.1*pi:2*pi;
u = (-2:0.1:2)';
x = a * cosh(u) * cos(v);
y = b * cosh(u) * sin(v);
z = c * sinh(u) * ones(size(v));
surf(x,y,z);
hold on
grid on
[u, v, w] = surfnorm(x, y, z);
quiver3(x, y, z, u, v, w, 4, "k")
view(-30, 30)
hold off


%% Task 10.
[x, y] = meshgrid(-5:0.1:5, -7:0.14:7);
z = x .^ 2 + y .^ 2;
surf(x, y, z)
[u, v, w] = surfnorm(x, y, z);
hold on
quiver3(x, y, z, u, v, w, 3, "c")
view(-30, 30)
hold off


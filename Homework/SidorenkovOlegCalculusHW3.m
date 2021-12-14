%% Sidorenkov Oleg Vladimirovich Matan DZ 3.


%% Task 1.
x = -2:0.01:2;
y = exp(-x) .* sin(10 * x);
figure
hold on
grid on
plot(x, y)
hold off


%% Task 2A.
figure
x = 0:0.001:5;
y = exp(-x) .* sin(10 * x);
hold on
grid on
area(x, y)
hold off


%% Task 2B.
figure
x = 0:0.001:5;
y = exp(-x) .* sin(10 * x);
hold on
grid on
comet(x, y)
hold off


%% Task 2C.
figure
x = 0:0.001:5;
y = exp(-x) .* sin(10 * x);
z = x;
hold on
grid on
view(-58, -13)
comet3(x, y, z, 0.9)
hold off


%% Task 3.
pieData = [25, 10, 20, 30, 15];
explode = [0, 1, 0, 0, 0];
pie3(pieData, explode)


%% Task 4.
x = 0:0.01:1;
y = exp(-x) .* (sin(x) + 0.1 * sin(100 * pi * x));
figure
hold on
grid on
plot(x, y, 'r')
x = 0:(1/99):1;
y = exp(-x) .* (sin(x) + 0.1 * sin(100 * pi * x));
plot(x, y, 'g')
hold off


%% Task 5.
x = 0:0.01:10;
f = log(2 * x);
g = log(x) .* sin(2 * x);
figure
loglog(x, f, 'r')
hold on
grid on
loglog(x, g, 'b')
title('loglog')
legend('plot1', 'plot2', 'Location', 'northwestoutside')
xlabel('logx')
ylabel('logy')
hold off


figure
semilogx(x, f, 'r')
hold on
grid on
semilogx(x, g, 'b')
title('logx')
legend('plot1', 'plot2', 'Location', 'northwestoutside')
xlabel('logx')
ylabel('y')
hold off


figure
semilogy(x, f, 'r')
hold on
grid on
semilogy(x, g, 'b')
title('logy')
legend('plot1', 'plot2', 'Location', 'northwestoutside')
xlabel('x')
ylabel('logy')
hold off


%% Task 6.
t = -pi:0.01:pi;
x = 2 * sin(t);
y = 4 * cos(t);
figure
hold on
grid on
plot(x, y)
hold off


%% Task 7.
[x, y] = meshgrid(-2:0.05:2);
z = 4 * sin(2 * pi * x) .* cos(1.5 * pi * y) .* (1 - y .^ 2) .* x .* (1 - x);
figure
hold on
grid on
hidden off
view(180, 0)
mesh(x, y, z)
hold off


%% Task 8.
[x, y] = meshgrid(-3:0.01:3);
z = 4 * sin(2 * pi * x) .* cos(1.5 * pi * y) .* (1 - y .^ 2) .* x .* (1 - x);
figure
hold on
grid on
view(180, 0)
mesh(x, y, z)
colorbar
hold off


%% Task 9.
[x, y] = meshgrid(-2:0.05:2);
z = 4 * sin(2 * pi * x) .* cos(1.5 * pi * y) .* (1 - y .^ 2) .* x .* (1 - x);
figure
hold on
grid on
colormap('default')
view(45, 45)
surfl(x, y, z, [-90, 45])
hold off


%% Task 10.
[x, y] = meshgrid(-1:0.01:1);
z = ((sin(x)) .^ 2 + (cos(y)) .^ 2) .^ (x .* y);
figure
subplot(2, 2, 1)
hold on
grid on
view(30, 30)
mesh(x, y, z)
hold off
subplot(2, 2, 2)
hold on
grid on
view(60, 50)
surf(x, y, z)
hold off
subplot(2, 2, 3)
hold on
grid on
view(120, 120)
colormap('default')
contour3(x, y, z, 100)
hold off
subplot(2, 2, 4)
hold on
grid on
colormap('default')
view(150, 150)
surfl(x, y, z, [-90, 45])
hold off
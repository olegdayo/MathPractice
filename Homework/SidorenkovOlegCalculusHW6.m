%% Sidorenkov Oleg Calculus HW 6.


%% Task 1.
a = [1 1 0 0 1 3];
b = [1 2 1 -10];

c = conv(a, b);
poly2sym(c)


%% Task 2.
a = [1 1 0 0 0 0 1 -1];
b = [1 2 -1];

[d, r] = deconv(a, b);

poly2sym(d)


%% Task 3.
a = [1 1 1 -3 -2 -116 -1];
b = [1 0 -116 1];

[d, r] = deconv(a, b);

poly2sym(r)


%% Task 4.
a = [1 2 4 2 3 0 1 3];
b = [0 0 0 1 0 2 -3 -9];

c = a + b;

poly2sym(c)


%% Task 5.
a = [1 0 2 0 4 0 2 0 3 3];
b = [1 0 0 0 0 0 0 2 0 0];

c = a - b;

poly2sym(c)


%% Task 6.
a = [2 0 0 0 0 3 1 -10 -1 1024];

b = polyder(a);

poly2sym(b)


%% Task 7.
x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
extendedX = 0.1:0.01:2;

p3 = polyfit(x, y, 3);
p4 = polyfit(x, y, 4);
p5 = polyfit(x, y, 5);
p6 = polyfit(x, y, 6);
p7 = polyfit(x, y, 7);

figure
hold on
grid on
plot(x, y)
plot(extendedX, polyval(p3, extendedX))
plot(extendedX, polyval(p4, extendedX))
plot(extendedX, polyval(p5, extendedX))
plot(extendedX, polyval(p6, extendedX))
plot(extendedX, polyval(p7, extendedX))
legend('Plot', strcat('Power: 3, Polynom:', char(poly2sym(round(p3, 0)))), strcat('Power: 4, Polynom:', char(round(poly2sym(p4), 0))), strcat('Power: 5, Polynom:', char(round(poly2sym(p5), 0))), strcat('Power: 6, Polynom:', char(round(poly2sym(p6), 0))), strcat('Power: 7, Polynom:', char(round(poly2sym(p7), 0))))
hold off


%% Task 8.
x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
extendedX = 0.1:0.01:2;

yNear1 = interp1(x, y, extendedX, 'nearest');
yNear2 = interp1(x, y, extendedX, 'linear');
yNear3 = interp1(x, y, extendedX, 'spline');
yNear4 = interp1(x, y, extendedX, 'pchip');

figure
hold on
grid on
plot(x, y)
plot(extendedX, yNear1)
plot(extendedX, yNear2)
plot(extendedX, yNear3)
plot(extendedX, yNear4)
legend('Plot', 'Nearest', 'Linear', 'Spline', 'Pchip')
hold off


%% Task 9.
[x, y] = meshgrid(0:0.2:1);
z = sin(3 * pi * x) .* sin(3 * pi * y) .* exp(- x .^ 2 - y .^ 2);
[extendedX, extendedY] = meshgrid(0:0.02:1);

yNear1 = interp2(x, y, z, extendedX, extendedY, 'nearest');
yNear2 = interp2(x, y, z, extendedX, extendedY, 'linear');
yNear3 = interp2(x, y, z, extendedX, extendedY, 'cubic');
yNear4 = interp2(x, y, z, extendedX, extendedY, 'spline');

figure
subplot(3, 2, 1)
hold on
title('Plot')
surfl(x, y, z)
view(30, 30)
hold off

subplot(3, 2, 2)
hold on
title('Nearest')
surfl(extendedX, extendedY, yNear1)
view(30, 30)
hold off

subplot(3, 2, 3)
hold on
title('Linear')
surfl(extendedX, extendedY, yNear2)
view(30, 30)
hold off

subplot(3, 2, 4)
hold on
title('Cubic')
surfl(extendedX, extendedY, yNear3)
view(30, 30)
hold off

subplot(3, 2, 5)
hold on
title('Spline')
surfl(extendedX, extendedY, yNear4)
view(30, 30)
hold off


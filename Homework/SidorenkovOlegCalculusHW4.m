%% Sidorenkov Oleg Vladimirovich Matan DZ 4.


%% Task 1.
t = 0:0.01:100;
x = exp(-abs(t - 100) / 100) .* sin(t);
y = exp(-abs(t - 100) / 100) .* cos(t);
z = t;
figure
hold on
grid on
plot3(x, y, z, "r", "LineWidth", 1)
view(-30, 30)
hold off


%% Task 2.
%u = -4*pi:0.1*pi:4*pi;
%v = u';
[u, v] = meshgrid(-4*pi:0.1*pi:4*pi);
x = 0.5 * u .* cos(v);
y = 0.5 * u .* sin(v);
z = u;
figure
hold on
grid on
plot3(x, y, z, "g", "LineWidth", 1)
view(-30, 30)
hold off



%% Task 3.
u = -2*pi:0.1*pi:2*pi;
v = u';
x = cos(u) .* cos(v);
y = 0.6 * cos(u) .* sin(v);
z = 0.8 * sin(u);
figure
hold on
grid on
plot3(x, y, z, "b", "LineWidth", 1)
view(-30, 30)
hold off


%% Task 4.
t = 0:0.2:2;
x = 0.5 * t;
y = 0.8 * t .* (1 - 0.5 * t);
ux(1:length(x)) = 0.5;
uy = 0.8 * (1 - t);
fign = figure;
figure(fign)
subplot(2, 2, 1)
hold on
grid on
quiver(x, y, ux, uy, 0, "r", "LineWidth", 1)
hold off
subplot(2, 2, 2)
hold on
grid on
quiver(x, y, ux, uy, 1.5, "g", "LineWidth", 1)
hold off
subplot(2, 2, 3)
hold on
grid on
quiver(x, y, ux, uy, 0.3, "b", "LineWidth", 1)
hold off


% Maybe will need to change subplots to plots.
% Nope, everything is working.


%% Task 5.
t = 0:0.2:2;
x = 0.5 * t;
y = 0.8 * t .* (1 - 0.5 * t);
ux(1:length(x)) = 0.5;
uy = 0.8 * (1 - t);
fign = figure;
figure(fign)
subplot(2, 2, 1)
hold on
grid on
quiver(x, y, ux, uy, 0, "r", "LineWidth", 1)
hold off
subplot(2, 2, 2)
hold on
grid on
quiver(x, y, ux, uy, 1.5, "g", "LineWidth", 1)
hold off
subplot(2, 2, 3)
hold on
grid on
quiver(x, y, ux, uy, 0.3, "b", "LineWidth", 1)
hold off


% Maybe will need to change subplots to plots.
% Nope, everything is working.


figure(fign)
hold on
plot(x, y)
hold off


%% Task 6.
figure
compass(ux, uy)


%% Task 7.
figure
feather(ux, uy)


%% Task 8.
v = -pi:pi/15:pi;
u = v';
r = 2;
x = r * sin(u) .* cos(v);
y = r * sin(u) .* sin(v);
z = r * cos(u) .* ones(size(v));
surf(x, y, z);
[u, v, w] = surfnorm(x, y, z);
hold on
quiver3(x, y, z, u, v, w, 4, "k")
view(-30, 30)
hold off


%% Task 9.
a = 2;
b = 3;
[x, y] = meshgrid(-2:0.05*pi:2);
z = (x .* x) / (2 * a ^ 2) - (y .* y) / (2 * b ^ 2);
surf(x, y, z);
[u, v, w] = surfnorm(x, y, z);
hold on
quiver3(x, y, z, u, v, w, 0.5, "r")
view(-30, 30)
hold off


%% Task 10.
a = 10;
b = 8;
c = 20;
v = -a:0.5:a;
u = (-b:0.5:b)';
[x, y] = meshgrid(v, u);
z = sqrt((x .^ 2 / a ^ 2 + y .^ 2 / b ^ 2 + 0.1) .* c ^ 2);
surf(x,y,z);
hold on
[u, v, w] = surfnorm(x, y, z);
quiver3(x, y, z, u, v, w, 2, "c")
z=-z;
surf(x,y,z);
[u, v, w] = surfnorm(x, y, z);
quiver3(x, y, z, u, v, w, 2, "o")
view(-30, 30)
hold off


%% Task 11.
v = 0:0.1:3;
u = v';
x = cos(u) .* cos(v);
y = sin(u) .* sin(v);
z = u .* v;
surf(x, y, z);
[u, v, w] = surfnorm(x, y, z);
hold on
quiver3(x, y, z, u, v, w, 0.5, "r")
view(-30, 30)
hold off


%% Task 12.
xl = 1;
xr = 3;
yl = -1;
yr = 1;
zl = 0;
zr = 2;
[x, y, z] = meshgrid(xl:0.05:xr, yl:0.05:yr, zl:0.05:zr);
u = x ./ sqrt(x .^ 2 + y .^ 2 + z .^ 2);
v = y ./ sqrt(x .^ 2 + y .^ 2 + z .^ 2);
w = z ./ sqrt(x .^ 2 + y .^ 2 + z .^ 2);
[cx, cy, cz] = meshgrid(xl:(xr - xl)/3:xr, yl:(yr - yl)/3:yr, zl:(zr - zl)/3:zr);
figure
hold on
grid on
cone = coneplot(x, y, z, u, v, w, cx, cy, cz, 5)
cone.FaceColor = 'red';
view(-30, 30)
hold off


%% Dop Task 1.
[x, y] = meshgrid(-5:0.1:5, -7:0.14:7);
z = x .^ 2 + y .^ 2;
surf(x, y, z)
[u, v, w] = surfnorm(x, y, z);
hold on
quiver3(x, y, z, u, v, w, 3, "c")
view(-30, 30)
hold off


%% Dop Task 2.
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


%% Dop Task 3.
a = -pi:pi/5:pi;
b = a';
r = 2;
figure
hold on
grid on
%x = r * sin(a) .* cos(b);
%y = r * sin(a) .* sin(b);
%z = r * cos(a) .* ones(size(b));
[x, y, z] = ellipsoid(0, 0, 0, r, r, r);
surf(x, y, z)
%[u, v, w] = surfnorm(x, y, z);
[u, v, w] = meshgrid(-pi:0.1*pi:pi);
[cx, cy, cz] = ellipsoid(0, 0, 0, 1.1 * r, 1.1 * r, 1.1 * r);
cone = coneplot(u, v, w, u, v, w, cx, cy, cz, -3);
cone.FaceColor = 'red';
view(-30, 30)
hold off


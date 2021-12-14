%% Sidorenkov Algebra HomeWork 5.


%% Task 1.
a = [1.3; -3.3; 0.5];
b = [4.2; 6.5; -2.7];
axb = cross(a, b)


%% Task 2.
axbPlusbxa = cross(a, b) + cross(b, a)


%% Task 3.
a = [3.5 0.1 0];
b = [0.5 2.1 0];
c = [-0.2 -1.9 2.8];
tripleProduct = dot(a, cross(b, c))


%% Task 4.
dotProduct = dot(a, b)


%% Task 5.
a = [1 2 3];
b = [4 5 6];
c = [8 8 8];
parallelepipedVolume = dot(a, cross(b, c))


%% Task 6.
a = [1 2 3];
b = [4 4 5 5];
c = a' * b


%% Task 7.
% e = 0.5.
f = -pi:0.1*pi:pi;
a = 1;
e = 0.5;
p = a ./ (1 - e .* cos(f));
[x, y] = pol2cart(f, p);
hold on
grid on
plot(x, y)
% hold off


% e = 1.
f = -pi:0.1*pi:pi;
a = 1;
e = 1;
p = a ./ (1 - e .* cos(f));
[x, y] = pol2cart(f, p);
% hold on
grid on
plot(x, y)
% hold off


% e = 2.
f = -pi:0.1*pi:pi;
a = 1;
e = 2;
p = a ./ (1 - e .* cos(f));
[x, y] = pol2cart(f, p);
% hold on
grid on
plot(x, y)
hold off


%% Task 8.
% e = 0.5.
f = -pi:0.05*pi:pi;
a = 1;
e = 0.5;
p = a ./ (1 - e .* cos(f));
p = p';
[x, y, z] = pol2cart(f, p, f);
figure
hold on
grid on
plot3(x, y, z)
hold off
view(30, 30)


% e = 1.
f = -pi:0.05*pi:pi;
a = 1;
e = 1;
p = a ./ (1 - e .* cos(f));
p = p';
[x, y, z] = pol2cart(f, p, f);
figure
hold on
grid on
plot3(x, y, z)
hold off
view(30, 30)


% e = 2.
f = -pi:0.05*pi:pi;
a = 1;
e = 2;
p = a ./ (1 - e .* cos(f));
p = p';
[x, y, z] = pol2cart(f, p, f);
figure
hold on
grid on
plot3(x, y, z)
hold off
view(30, 30)


%% Task 9.
f = -pi:0.01*pi:pi;
%g = 0:0.01*pi:2*pi;
p = 1;
[x, y, z] = sph2cart(f, f', p);
figure
hold on
grid on
plot3(x, y, z)
hold off
view(30, 30)


%% Task 10.
f = -pi:0.01*pi:pi;
%g = 0:0.01*pi:2*pi;
p = 1;
[x, y, z] = sph2cart(f', f, p);
figure
hold on
grid on
plot3(x, y, z)
hold off
view(30, 30)


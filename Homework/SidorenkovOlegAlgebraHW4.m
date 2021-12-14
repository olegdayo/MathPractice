%% Sidorenkov Oleg Vladimorovich BSE204 Matlab Algebra DZ 4.


%% Task 1.
a = [2, 3, 4];
b = [3, 5, 2];
c = [1, 1, 1];
d = (a + b) + c;
e = a + (b + c);
ans1 = d == e
ans2 = isequal(d, e)
figure
hold on
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "r", "AutoScale", "off", "LineWidth", 3);
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "g", "AutoScale", "off", "LineWidth", 3);
quiver3(0, 0, 0, c(1), c(2), c(3), 1, "b", "AutoScale", "off", "LineWidth", 3);
% We cannot see black vector, because it is the same, as cyan.
quiver3(0, 0, 0, d(1), d(2), d(3), 1, "k", "AutoScale", "off", "LineWidth", 3);
quiver3(0, 0, 0, e(1), e(2), e(3), 1, "c", "AutoScale", "off", "LineWidth", 3);
hold off


%% Task 2.
a = [4, 2, 3];
b = [1, 5, 2];
al = 4;
be = 3;
distr1 = isequal(al * (a + b), al * a + al * b)
distr2 = isequal((al + be) * a, al * a + be * a)
assoc = isequal(al * (be * a), (al * be) * a)


%% Task 3.
a = [3, 4, 5];
[ha, la] = size(a);
lena = 0;
for i = 1:la
    lena = lena + a(i) ^ 2;
end
lena = sqrt(lena);
lena
lennoa = norm(a)
arelensequala = isequal(lena, lennoa)
orta = a / lena
lenorta = norm(orta)
figure
hold on
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "c", "AutoScale", "off", "LineWidth", 3);
quiver3(0, 0, 0, orta(1), orta(2), orta(3), 1, "k", "AutoScale", "off", "LineWidth", 3);
hold off


b = [4, 2];
[hb, lb] = size(b);
lenb = 0;
for i = 1:lb
    lenb = lenb + b(i) ^ 2;
end
lenb = sqrt(lenb);
lenb
lennob = norm(b)
arelensequalb = isequal(lenb, lennob)
ortb = b / lenb
lenortb = norm(ortb)
figure
hold on
quiver(0, 0, a(1), a(2), "c", "LineWidth", 3);
quiver(0, 0, orta(1), orta(2), "k", "LineWidth", 3);
hold off


%% Task 4.
a = [3, 4, 5];
ax = [1, 0, 0];
ay = [0, 1, 0];
az = [0, 0, 1];
% Angle ax, ay, az.
aax = dot(a, ax) / (norm(a) * norm(ax))
aay = dot(a, ay) / (norm(a) * norm(ay))
aaz = dot(a, az) / (norm(a) * norm(az))
checkandlesa = aax ^ 2 + aay ^ 2 + aaz ^ 2


b = [4, 2];
bx = [1, 0];
by = [0, 1];
% Angle ax, ay.
abx = dot(b, bx) / (norm(b) * norm(bx))
aby = dot(b, by) / (norm(b) * norm(by))
checkandlesb = abx ^ 2 + aby ^ 2


%% Task 5.
a = [1, -2, 0];
b = [0, 1, 1];
c = [1, 2, 2];
ortx = [1, 0, 0];
orty = [0, 1, 0];
ortz = [0, 0, 1];
orta = a / norm(a);
ortb = b / norm(b);
ortc = c / norm(c);
arecomplanar = isequal(dot(cross(a, b), c), 0)
figure
hold on
grid on
% Vectors.
line([0; a(1)], [0; a(2)], [0; a(3)], 'Color', 'r', 'LineWidth', 4)
plot3(a(1), a(2), a(3), '>', 'Color', 'r', 'LineWidth', 4)
line([0; b(1)], [0; b(2)], [0; b(3)], 'Color', 'g', 'LineWidth', 4)
plot3(b(1), b(2), b(3), '>', 'Color', 'g', 'LineWidth', 4)
line([0; c(1)], [0; c(2)], [0; c(3)], 'Color', 'b', 'LineWidth', 4)
plot3(c(1), c(2), c(3), '>', 'Color', 'b', 'LineWidth', 4)
% Coordinate orts.
line([0; ortx(1)], [0; ortx(2)], [0; ortx(3)], 'Color', 'k', 'LineWidth', 4)
plot3(ortx(1), ortx(2), ortx(3), '>', 'Color', 'k', 'LineWidth', 4)
line([0; orty(1)], [0; orty(2)], [0; orty(3)], 'Color', 'k', 'LineWidth', 4)
plot3(orty(1), orty(2), orty(3), '>', 'Color', 'k', 'LineWidth', 4)
line([0; ortz(1)], [0; ortz(2)], [0; ortz(3)], 'Color', 'k', 'LineWidth', 4)
plot3(ortz(1), ortz(2), ortz(3), '>', 'Color', 'k', 'LineWidth', 4)
% Vectors orts.
line([0; orta(1)], [0; orta(2)], [0; orta(3)], 'Color', 'b', 'LineWidth', 4)
plot3(orta(1), orta(2), orta(3), '>', 'Color', 'b', 'LineWidth', 4)
line([0; ortb(1)], [0; ortb(2)], [0; ortb(3)], 'Color', 'r', 'LineWidth', 4)
plot3(ortb(1), ortb(2), ortb(3), '>', 'Color', 'r', 'LineWidth', 4)
line([0; ortc(1)], [0; ortc(2)], [0; ortc(3)], 'Color', 'g', 'LineWidth', 4)
plot3(ortc(1), ortc(2), ortc(3), '>', 'Color', 'g', 'LineWidth', 4)
hold off


%% Task 6.
p = [2, -3];
q = [1, 2];
i = [1, 0];
j = [0, 1];
s = [9, 4];
arecollininear = isequal(p(1) / p(2), q(1) / q(2))
A = [p(1) q(1); p(2) q(2)];
B = [s(1); s(2)];
sol = linsolve(A, B);
m = sol(1);
n = sol(2);
figure
hold on
grid on
quiver(-1, 0, 10, 0, 1, "k", "LineWidth", 1)
quiver(0, -6, 0, 16, 1, "k", "LineWidth", 1)
quiver(0, 0, m * p(1), m * p(2), 1, "r", "LineWidth", 3)
quiver(0, 0, n * q(1), n * q(2), 1, "r", "LineWidth", 3)
quiver(0, 0, i(1), i(2), 1, "g", "LineWidth", 3)
quiver(0, 0, j(1), j(2), 1, "g", "LineWidth", 3)
quiver(0, 0, p(1), p(2), 1, "b", "LineWidth", 3)
quiver(0, 0, q(1), q(2), 1, "b", "LineWidth", 3)
quiver(0, 0, s(1), s(2), 1, "k", "LineWidth", 3)
hold off


%% Task 7.
a = [3, 2];
b = [-2, 1];
c = [4, -4];
% a.
A = [a(1) b(1); a(2) b(2)];
B = [c(1); c(2)];
sol = linsolve(A, B);
ma = sol(1);
na = sol(2);
% b.
A = [a(1) c(1); a(2) c(2)];
B = [b(1); b(2)];
sol = linsolve(A, B);
mb = sol(1);
nb = sol(2);
% c.
A = [b(1) c(1); b(2) c(2)];
B = [a(1); a(2)];
sol = linsolve(A, B);
mc = sol(1);
nc = sol(2);
% Plots.
figure
subplot(2, 2, 1)
hold on
grid on
quiver(-2, 0, 6, 0, 1, "k", "LineWidth", 1)
quiver(0, -6, 0, 16, 1, "k", "LineWidth", 1)
quiver(0, 0, a(1), a(2), 1, "r", "LineWidth", 3)
quiver(0, 0, b(1), b(2), 1, "g", "LineWidth", 3)
quiver(0, 0, c(1), c(2), 1, "b", "LineWidth", 3)
hold off
subplot(2, 2, 2)
hold on
grid on
quiver(-2, 0, 8, 0, 1, "k", "LineWidth", 1)
quiver(0, -5.5, 0, 15.5, 1, "k", "LineWidth", 1)
quiver(0, 0, ma * a(1), ma * a(2), 1, "b", "LineWidth", 3)
quiver(0, 0, na * b(1), na * b(2), 1, "b", "LineWidth", 3)
quiver(0, 0, c(1), c(2), 1, "r", "LineWidth", 3)
hold off
subplot(2, 2, 3)
hold on
grid on
quiver(-2, 0, 4, 0, 1, "k", "LineWidth", 1)
quiver(0, -2, 0, 4, 1, "k", "LineWidth", 1)
quiver(0, 0, mb * a(1), mb * a(2), 1, "b", "LineWidth", 3)
quiver(0, 0, nb * c(1), nb * c(2), 1, "b", "LineWidth", 3)
quiver(0, 0, b(1), b(2), 1, "r", "LineWidth", 3)
hold off
subplot(2, 2, 4)
hold on
grid on
quiver(-10, 0, 20, 0, 1, "k", "LineWidth", 1)
quiver(0, -5, 0, 15, 1, "k", "LineWidth", 1)
quiver(0, 0, mc * b(1), mc * b(2), 1, "b", "LineWidth", 3)
quiver(0, 0, nc * c(1), nc * c(2), 1, "b", "LineWidth", 3)
quiver(0, 0, a(1), a(2), 1, "r", "LineWidth", 3)
hold off


%% Task 8.
a = [2, 1, 0];
b = [1, -1, 2];
c = [2, 2, -1];
d = [3, 7, -7];
A = [1 2 3; -1 2 7; 2 -1 -7];
B = [2; 1; 0];
sol = linsolve(A, B);
i = sol(1);
j = sol(2);
k = sol(3);
figure
subplot(1, 2, 1)
hold on
grid on
quiver3(-10, 0, 0, 20, 0, 0, 1, "k", "LineWidth", 1)
quiver3(0, -10, 0, 0, 20, 0, 1, "k", "LineWidth", 1)
quiver3(0, 0, -10, 0, 0, 20, 1, "k", "LineWidth", 1)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "c", "LineWidth", 3)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "r", "LineWidth", 3)
quiver3(0, 0, 0, c(1), c(2), c(3), 1, "g", "LineWidth", 3)
quiver3(0, 0, 0, d(1), d(2), d(3), 1, "b", "LineWidth", 3)
hold off
subplot(1, 2, 2)
hold on
grid on
quiver3(-10, 0, 0, 20, 0, 0, 1, "k", "LineWidth", 1)
quiver3(0, -10, 0, 0, 20, 0, 1, "k", "LineWidth", 1)
quiver3(0, 0, -10, 0, 0, 20, 1, "k", "LineWidth", 1)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "r", "LineWidth", 3)
quiver3(0, 0, 0, i * b(1), i * b(2), i * b(3), 1, "b", "LineWidth", 3)
quiver3(0, 0, 0, j * c(1), j * c(2), j * c(3), 1, "b", "LineWidth", 3)
quiver3(0, 0, 0, k * d(1), k * d(2), k * d(3), 1, "b", "LineWidth", 3)
hold off


%% Task 9.
a = [1, -2, 0];
b = [0, 1, 2];
c = [1, 2, 2];
alp = 10;
d = [0, 0, 0];
% Theory 1.
t1 = isequal(dot(a, b), dot(b, a))
% Theory 2.
t2 = isequal(dot(a + b, c), dot(a, c) + dot(b, c))
% Theory 2'.
t2e = isequal(dot(a, b + c), dot(a, b) + dot(a, c))
% Theory 3.
t3 = isequal(dot(alp * a, b), alp * dot(a, b))
% Theory 3'.
t3e = isequal(dot(a, alp * b), alp * dot(a, b))
% Theory 4.
% t4notnull must be 0, t4null must be 1.
t4notnull = isequal(abs(dot(a, a)), 0)
t4null = isequal(abs(dot(d, d)), 0)


%% Task 10.
a = [1, -2, 0];
b = [0, 1, 2];
c = [1, 2, 2];
% Example 2.
e2 = isequal(dot(a, b) * c, a * dot(b, c))
% Example 3.
d = [1, 2, 3];
e = [4, 5, 6];
f = [6, 10, 2];
% e3a must be 1, e3b must be 0.
e3a = isequal(dot(d, e), dot(d, f))
e3b = isequal(e, f)
% Example 4.
e4 = isequal(dot(a, b) * b, a * dot(b, b))


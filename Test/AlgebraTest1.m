%% Algebra Test 1.


%% Task 1.
for i = 1 : 5
    x = randi(100);
    x
end


%% Task 2.
data = [1 2 3; 4 5 6; 7 8 9];
sz = size(data);
% Wrote sz(1):1:sz(1) to show, that we can use a step, not write the whole
% array
b = data(:, sz(1)-1:1:sz(1))


%% Task 3.
a = [-3 1 2; 1 0 -1; -4 3 0];
b = [-2 1; 1 -1; -10 -2];
answer = a ^ -1 * b


%% Task 4.
Ag = [2 1 -1 2; 2 3 -3 4; 8 3 2 2; 8 5 1 5];
Bg = [-4; -14; -1; -7];
Cg = [Ag Bg];
Dg = rref(Cg);
Xg = Dg(:, 5);
Xg


%% Task 5.
row1 = [0 5 3];
row2 = [4 5 7];
row3 = [3 3 2];
a = [row1; row2; row3]


%% Task 6.
figure
hold on
grid on
axis([-10 7 -5 7])
axis equal
line([1; -2], [5; 4], "Color", "r", "LineWidth", 5)
line([-8; 5], [3; -3], "Color", "g", "LineWidth", 5)
hold off


%% Task 7.
figure
subplot(2, 2, 1)
line([-2; 2], [-2; 2], "Color", "r", "LineWidth", 5)
subplot(2, 2, 2)
line([-2; 2], [2; -2], "Color", "g", "LineWidth", 5)
subplot(2, 2, 3)
line([-2, -2, 0; 2, 2, 0], [-2, 2, -4; 2, -2, 5], "LineWidth", 5)
subplot(2, 2, 4)
line([0; 0], [-4; 5], "Color", "b", "LineWidth", 5)


%% Task 8.
a = [4 4 5];
b = [0 7 9];
A = 2;
B = 3;
ans1 = isequal(A * (a + b), A * a + A * b)
ans2 = isequal((A + B) * b, A * b + B * b)
ans3 = isequal(A * (B * a), (A * B) * a)


%% Task 9.
a=[1 -2 0];
b=[0 1 1];
c=[1 2 2];


areComplanar = isequal(dot(cross(a, b), c), 0)


ortx = [1, 0, 0];
orty = [0, 1, 0];
ortz = [0, 0, 1];


orta = a / norm(a);
ortb = b / norm(b);
ortc = c / norm(c);


figure
hold on
grid on
axis equal


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


% Vectors orts, colors are mixed for better vision.
line([0; orta(1)], [0; orta(2)], [0; orta(3)], 'Color', 'b', 'LineWidth', 5)
plot3(orta(1), orta(2), orta(3), '>', 'Color', 'b', 'LineWidth', 5)
line([0; ortb(1)], [0; ortb(2)], [0; ortb(3)], 'Color', 'r', 'LineWidth', 5)
plot3(ortb(1), ortb(2), ortb(3), '>', 'Color', 'r', 'LineWidth', 5)
line([0; ortc(1)], [0; ortc(2)], [0; ortc(3)], 'Color', 'g', 'LineWidth', 5)
plot3(ortc(1), ortc(2), ortc(3), '>', 'Color', 'g', 'LineWidth', 5)
view(120, 30)
hold off


%% Task 10.
a = [4 3 5];
b = [3 2 1];
c = [3 3 3];
sum1 = a + (b + c)
sum2 = (a + b) + c
areSumsEqual = isequal(a + (b + c), (a + b) + c)
figure
hold on
grid on
axis equal


quiver3(0, 0, 0, a(1), a(2), a(3), 1, "r", "LineWidth", 3)
text(a(1) / 2, a(2) / 2, a(3) / 2, "\bfA", "Color", "red", "FontSize", 20);


quiver3(0, 0, 0, b(1), b(2), b(3), 1, "g", "LineWidth", 3)
text(b(1) / 2, b(2) / 2, b(3) / 2, "\bfB", "Color", "green", "FontSize", 20);


quiver3(0, 0, 0, c(1), c(2), c(3), 1, "b", "LineWidth", 3)
text(c(1) / 2, c(2) / 2, c(3) / 2, "\bfC", "Color", "blue", "FontSize", 20);


% Black and cyan vector are same, so sums are equal.
quiver3(0, 0, 0, sum1(1), sum1(2), sum1(3), 1, "k", "LineWidth", 8)
text(sum1(1) / 2, sum1(2) / 2, sum1(3) / 2, "\bfSum1", "Color", "black", "FontSize", 20);


quiver3(0, 0, 0, sum2(1), sum2(2), sum2(3), 1, "c", "LineWidth", 3)
text(sum2(1) / 1.5, sum2(2) / 1.5, sum2(3) / 1.5, "\bfSum2", "Color", "cyan", "FontSize", 20);


view(120, 30)
hold off


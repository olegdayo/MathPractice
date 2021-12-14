%% Sidorenkov Oleg Vladimorovich BSE204 Matlab Algebra DZ 3.


%% Task 1.
figure
hold on
line([0; 2], [0; 1], "Color", "r", "LineWidth", 5)
line([0; -1], [0; 2], "Color", "g", "LineWidth", 5)
line([-2; 0], [-4; 0], "Color", "b", "LineWidth", 5)
hold off


%% Task 2.
figure
line([0, 0, -2; 2, -1, 0], [0, 0, -4; 1, 2, 0], "LineWidth", 5)


%% Task 3.
figure
subplot(2, 2, 1)
line([0; 2], [0; 1], "Color", "r", "LineWidth", 5)
subplot(2, 2, 2)
line([0; 2], [2; 0], "Color", "g", "LineWidth", 5)
subplot(2, 2, 3)
line([0, 0, 0; 2, 2, 3], [0, 2, 2; 1, 0, 0], "LineWidth", 5)
subplot(2, 2, 4)
line([0; 3], [2; 0], "Color", "b", "LineWidth", 5)


%% Task 4.
figure
hold on
quiver(0, 0, 2, 1, 1, "k", "LineWidth", 3)
quiver(0, 2, 2, -2, 1, "k", "LineWidth", 3)
quiver(0, 2, 3, -2, 1, "k", "LineWidth", 3)
hold off


%% Task 5.
figure
hold on
quiver3(0, 0, 0, 1, 0, 0, 1, "r", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 0, 1, 0, 1, "g", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 0, 0, 1, 1, "b", "AutoScale", "off", "LineWidth", 3)
hold off


%% Task 6.
figure
hold on
quiver(0, 0, 10, 0, 1, "r", "LineWidth", 2)
quiver(0, 0, 0, 10, 1, "g", "LineWidth", 2)
quiver(0, 0, 1, 0, 1, "k", "LineWidth", 4)
quiver(0, 0, 0, 1, 1, "k", "LineWidth", 4)
hold off


%% Task 7.
figure
hold on
quiver3(0, 0, 0, 10, 0, 0, 1, "r", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 0, 10, 0, 1, "g", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 0, 0, 10, 1, "b", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 1, 0, 0, 1, "k", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 0, 1, 0, 1, "k", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, 0, 0, 1, 1, "k", "AutoScale", "off", "LineWidth", 3)
hold off


%% Task 8a.
figure
hold on
grid on
axis([-2, 3, -6, 4])
axis equal
line([-1; 2],[ 3.5; -5])
text(2, -5, '(2, -5)')
hold off


%% Task 8b.
figure
hold on
grid on
axis([-2, 3, -6, 4])
axis equal
line([1, 4; 2, 3],[-1, 0; -3.5, -5])
text(2, -3.5, '(2, -3.5)')
text(3, -5, '(3, -5)')
hold off


%% Task 9.
figure
hold on
axis([-3, 2, -2, 3])
quiver(-2, 0, 3, 2, 1, "b", "LineWidth", 4)
quiver(-2, 0, 3, -1, 1, "r", "LineWidth", 4)
quiver(1, 2, 0, -3, 1, "b", "LineWidth", 4)
% Slightly replaced coordinates for better readability.
text(-2.2, 0, '\bfA')
plot(-2, 0, '*', 'LineWidth', 10)
text(1, 2.2, '\bfB')
plot(1, 2, '*', 'LineWidth', 10)
text(1.2, -1, '\bfC')
plot(1, -1, '*', 'LineWidth', 10)
hold off


%% Task 10.
figure
hold on
subplot(2, 1, 1)
hold on
axis([-3, 2, -4, 3])
ax = -2;
ay = 0;
bx = 1;
by = 2;
cx = 1;
cy = -1;
dx = cx - bx + ax;
dy = cy - by + ay;
line([ax; bx], [ay; by], "Color", "b", "LineWidth", 5)
line([bx; cx], [by; cy], "Color", "b", "LineWidth", 5)
line([cx; dx], [cy; dy], "Color", "b", "LineWidth", 5)
line([dx; ax], [dy; ay], "Color", "b", "LineWidth", 5)
text(ax, ay, '\bfA')
text(bx, by, '\bfB')
text(cx, cy, '\bfC')
text(dx, dy, '\bfD')
hold off
subplot(2, 1, 2)
hold on
ab = [bx - ax, by - ay];
bc = [cx - bx, cy - by];
ad = [dx - ax, dy - ay];
dc = [cx - dx, cy - dy];
%Equal.
display(ab);
display(dc);
%Equal too.
display(ad);
display(bc);
axis([-3, 2, -4, 3])
quiver(ax, ay, ab(1), ab(2), 1, "b", "LineWidth", 3)
quiver(ax, ay, ad(1), ad(2), 1, "b", "LineWidth", 3)
quiver(bx, by, bc(1), bc(2), 1, "k", "LineWidth", 3)
quiver(cx, cy, -dc(1), -dc(2), 1, "k", "LineWidth", 3)
quiver(ax, ay, (cx - ax), (cy - ay), 1, "r", "LineWidth", 3)
text(ax, ay, '\bfA')
text(bx, by, '\bfB')
text(cx, cy, '\bfC')
text(dx, dy, '\bfD')
hold off
hold off


%% Task 11.
figure
hold on
subplot(2, 1, 1)
hold on
a1 = [2, 4, 6];
b1 = [3, 5, 2];
sum1 = a1 + b1;
display(sum1);
quiver3(0, 0, 0, a1(1), a1(2), a1(3), 1, "b", "AutoScale", "off", "LineWidth", 3)
quiver3(a1(1), a1(2), a1(3), b1(1), b1(2), b1(3), 1, "b", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, sum1(1), sum1(2), sum1(3), 1, "r", "AutoScale", "off", "LineWidth", 3)
text(0, 0, 0, '\bfA');
text(a1(1), a1(2), a1(3), '\bfB');
text(sum1(1), sum1(2), sum1(3), '\bfC');
hold off
subplot(2, 1, 2)
hold on
a2 = [7, 6, 5];
b2 = [3, 5, 2];
sub2 = a2 - b2;
display(sub2);
quiver3(0, 0, 0, a2(1), a2(2), a2(3), 1, "b", "AutoScale", "off", "LineWidth", 3)
quiver3(0, 0, 0, b2(1), b2(2), b2(3), 1, "b", "AutoScale", "off", "LineWidth", 3)
quiver3(b2(1), b2(2), b2(3), sub2(1), sub2(2), sub2(3), 1, "r", "AutoScale", "off", "LineWidth", 3)
text(0, 0, 0, '\bfA');
text(a2(1), a2(2), a2(3), '\bfB');
text(b2(1), b2(2), b2(3), '\bfC');
hold off
hold off
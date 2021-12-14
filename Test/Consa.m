%% Fucking Consa.


%% Task 1.
a = [0 3 4 18 256]
b = a(mod(a, 2) == 1)


%% Task 2.
for i = 1 : 5
    x = randi(100);
    x
end


%% Task 3.
a = [2 -1; 7 3];
b = [4 0 -3; -1 5 3];
c = a * b


%% Task 4.
%z = [1 3 3 7; 4 1 6 7; 3 4 2 1];
z(1, 1) = 1;
z(1, 2) = 3;
z(1, 3) = 3;
z(1, 4) = 7;
z(2, 1) = 4;
z(2, 2) = 1;
z(2, 3) = 6;
z(2, 4) = 7;
z(3, 1) = 3;
z(3, 2) = 4;
z(3, 3) = 2;
z(3, 4) = 1;
z


%% Task 5.
A = [1 2 1; 3 2 1; 4 3 -2];
B = [8; 10; 4];
X = A;
X(:, 1) = B
Y = A;
Y(:, 2) = B
Z = A;
Z(:, 3) = B
ansX = det(X) / det(A)
ansY = det(Y) / det(A)
ansZ = det(Z) / det(A)


%% Task 6.
figure
subplot(2, 2, 1)
line([-2; 2], [-2; 2], "Color", "r", "LineWidth", 5)
subplot(2, 2, 2)
line([-2; 2], [2; -2], "Color", "g", "LineWidth", 5)
subplot(2, 2, 3)
line([-2, -2, 0; 2, 2, 0], [-2, 2, -4; 2, -2, 5], "LineWidth", 5)
subplot(2, 2, 4)
line([0; 0], [-4; 5], "Color", "b", "LineWidth", 5)


%% Task 7.
figure
hold on
grid on
axis([-10 7 -5 7])
axis equal
line([1; -2], [5; 4], "Color", "r", "LineWidth", 5)
line([-8; 5], [3; -3], "Color", "g", "LineWidth", 5)
hold off


%% Task 8.
a = [1, -2, 3];
b = [0, 4, 2];
c = [5, 6, 7];


abcabcEqual = isequal(dot(cross(a, b), c), dot(a, cross(b, c)))


b1 = [50, 3, 111];
c1 = [50, 3, 111];


abacNotEqual = isequal(cross(a, b), cross(a, c))
bcNotEqual = isequal(b, c)


ab1ac1Equal = isequal(cross(a, b1), cross(a, c1))
b1c1Equal = isequal(b1, c1)


abbabbEqual = isequal(dot(cross(a, b), b), dot(a, cross(b, b)))


%% Task 9.
a = [4, 3, 5];
b = [3, 2, 1];
firstSum = a + b
secondSum = b + a
checkComm = isequal(a + b, b + a)
figure
hold on
quiver3(0, 0, 0, a(1), a(2), a(3), "r", "LineWidth", 3)
quiver3(0, 0, 0, b(1), b(2), b(3), "g", "LineWidth", 3)
text(a(1) / 2, a(2) / 2, a(3) / 2, "\bfA", "Color", "red", "FontSize", 20);
text(b(1) / 2, b(2) / 2, b(3) / 2, "\bfB", "Color", "green", "FontSize", 20);
hold off


%% Task 10.
oX = [1, 0, 0];
oY = [0, 1, 0];
oZ = [0, 0, 1];
c = [8, 5, 2];
aX = acos(dot(c, oX) / (norm(c) * norm(oX)))
aY = acos(dot(c, oY) / (norm(c) * norm(oY)))
aZ = acos(dot(c, oZ) / (norm(c) * norm(oZ)))
sumCos = cos(aX) ^ 2 + cos(aY) ^ 2 + cos(aZ) ^ 2


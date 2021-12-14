% Сидоренков Олег Владимирович БПИ204 алгебра дз 2.
%% Task 1.
disp("Задание №1.")
A = [3.25 -1.07 2.34;10.10 0.25 -4.78;5.04 -7.79 3.31];
A
%% Task 2.
disp("Задание №2.")
B = rand(3);
B
%% Task 3.
disp("Задание №3.")
ans1 = A + 10 * B;
ans1
ans2 = A * B;
ans2
ans3 = B';
ans3
%% Task 4.
disp("Задание №4.")
detB = det(B);
detB
%% Task 5.
disp("Задание №5.")
C = zeros(3, 1);
C(2, 1) = 5.71;
C(3, 1) = -3.61;
C
%% Task 6.
disp("Задание №6.")
X = A\C;
X
%% Task 7.
disp("Задание №7.")
syms x;
eq = [2*cos(x) 1;1 2*sin(x)];
anseq = solve(det(eq));
anseq
%% Task 8a.
disp("Задание №8a.")
Aa = [2 -1 -1;-1 2 1;3 -5 -2];
Ba = [3;0;1];
A1a = Aa;
A1a(:,1) = Ba;
A2a = Aa;
A2a(:,2) = Ba;
A3a = Aa;
A3a(:,3) = Ba;
X1a = det(A1a)/det(Aa);
X2a = det(A2a)/det(Aa);
X3a = det(A3a)/det(Aa);
Xa = [X1a;X2a;X3a];
Xa
%% Task 8b.
disp("Задание №8b.")
Ab = [2 1 0;1 0 3;0 5 -1];
Bb = [5;16;10];
A1b = Ab;
A1b(:,1) = Bb;
A2b = Ab;
A2b(:,2) = Bb;
A3b = Ab;
A3b(:,3) = Bb;
X1b = det(A1b)/det(Ab);
X2b = det(A2b)/det(Ab);
X3b = det(A3b)/det(Ab);
Xb = [X1b;X2b;X3b];
Xb
%% Task 9.
disp("Задание №9.")
Ag = [1 1 1;1 3 1;1 1 3];
Bg = [2;4;0];
Cg = [Ag Bg];
Dg = rref(Cg);
Xg = Dg(:, end);
Xg
%% Task 10.
disp("Задание №10.")
A10 = [0 -2;1 -3]
B10 = [5 1;-1 0]
E10 = eye(2);
ans10 = (3 * B10) ^ 2 - 2 * (B10 * ((A10) ^ -1) - E10)';
ans10
%% Task 11.
disp("Задание №11.")
A11 = [3.81 0.28 1.28 0.75;2.25 1.32 4.58 0.49;5.31 6.38 0.98 1.04;9.39 2.45 3.35 2.28];
B11 = [1;1;1;1];
[L,U] = lu(A11);
XLU11 = U\(L\B11);
XLU11
X11 = A11\B11
X11
X11 == XLU11
%% Task 12.
disp("Задание №12.")
A12 = rand(10,8);
A12
a12 = A12(end,end-1);
a12
%% Task 13.
disp("Задание №13.")
A13 = [1 -1 3;2 1 -4;3 1 -3];
B13 = [7;-3;1];
X13 = A13\B13;
X13
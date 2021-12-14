%% Sidorenkov Oleg Algebra Homework 6.


%% Task 1.
a = [1 2 3 4 8 7 6 5];

b = a(end:-1:1)1


%% Task 2.
a = [1 2 3 4 8 7 6 5];

b1 = a(mod(a, 2) == 1)
b2 = a(mod(a, 2) == 0)


%% Task 3.
a = [-1 10 -13 4 5 -6];

b = sum(a(a < 0))


%% Task 4.

a = [1 2 3 4 8 7 6 5];

a(abs(a - geomean(a)) > 0.15 * geomean(a)) = geomean(a);

a

%for i = 1:w
%    if abs(a(i) - mn) > 0.15 * mn
%        a(i) = mn;
%    end
%end
%a
%geomean(a)


%% Task 5.

a = [2 2 2 2 4 2 2 8 8 8 2 3 4 2];

a(a == min(a)) = max(a);

a

%for i = 1:w
%    if a(i) == min(a)
%        a(i) = max(a);
%    end
%end
%a


%% Task 6.
a = randi([-10 10], 2, 4)

positiveA = sum(sum(a > 0))
negativeA = sum(sum(a < 0))
zeroA = sum(sum(a == 0))


%% Task 7.
A = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 7];

% Wrong.
tryAnswer = A\b
% Yep, quite big.
condition = cond(A)

% Wrong.
linsolve(A, b)

extendedM = [A b];
differentThings = rref(extendedM);
neededAns = differentThings(:, end);
% And yep, still wrong.
neededAns


%% Task 8.
t = [0 0.1 0.2 0.3 0.4 0.5];
[l, w] = size(t)
y = [4.25 3.95 3.64 3.41 3.21 3.04];
B = y';

A =[];
for i=1:w
    A = cat(1, A, [exp(-t(i)) t(i)]);
end

answer = A\B;

global globalA
globalA = answer(1)
global globalB
globalB = answer(2)

figure
hold on
fplot(@pureFun, [0, 0.5])
plot(t, y, '.')
grid on
hold off


%% Task 9.
A = [1 2 3; 3 4 5];
b = [2; 2];
x = A\b
A * x


%% Task 10.
A = [2 3 3; -2 -3 -3];
b = [8; 7];
answer = linsolve(A, b)


%% Task 11.
A = [2 3 3; -2 -3 -3];
b = [8; 7];
[q, r] = qr(A)
x = r\(q' * b)


%% Task 12.
A = [2 4 5; 3 6 7; 8 5 2];

[x, y] = eig(A);

x1 = x(:, 1)
x2 = x(:, 2)
x3 = x(:, 3)
y1 = y(1, 1)
y2 = y(2, 2)
y3 = y(3, 3)

check1 = isequal(round(A * x1, 4), round(y1 * x1, 4))
check2 = isequal(round(A * x2, 4), round(y2 * x2, 4))
check3 = isequal(round(A * x3, 4), round(y3 * x3, 4))


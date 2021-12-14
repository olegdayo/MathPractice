%% Sidorenkov Oleg Algebra HW 8.


%% Task 1.
A = [5  0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];

AN = sparse(A)

whos A AN

revivedA = full(AN)


%% Task 2.
iRows = [1 2 2 3 1 3 4 2 4 5 3 5];
jCols = [1 1 2 2 3 3 3 4 4 4 5 5];
nElems = [5 1 3 1 -3 7 1 -1 22 1 -2 8];

A = sparse(iRows, jCols, nElems, max(iRows), max(jCols))
fullA = full(A)

whos A fullA

% A is still bigger. That's understandable because we still have some lack 
% of zeros


%% Task 3.
A = [5  0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];
AN = sparse(A)

[iRows, jCols, nElems] = find(AN)


%% Task 4.
compressedA = spconvert(load('Matrix.dat'))
fullFileA = full(compressedA)


%% Task 5.
A = [5  0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];
sz = size(A);

[lilDiagA, diags] = spdiags(A)
compressedDiagA = spdiags(lilDiagA, diags, sz(1), sz(2))
fullDiagA = full(compressedDiagA)


%% Task 6.
B = [4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];
sz = size(B);

compressedB = sparse(B)
fullB = sparse(compressedB)
[lilDiagB, diags] = spdiags(B)
fullDiagB = full(spdiags(lilDiagB, diags, sz(1), sz(2)))


%% Task 7.
B = [4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];

figure
hold on
grid on
spy(B)
hold off


%% Task 8.
B = [4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];

compressedB = sparse(B);
compressedSortedB = symrcm(compressedB)
fullSortedB = full(compressedB(compressedSortedB, compressedSortedB))

figure
hold on
grid on
spy(fullSortedB)
hold off


%% Task 9.
C = [7 1 1 1 1;
    1 7 0 0 0;
    1 0 7 0 0;
    1 0 0 7 0;
    1 0 0 0 7];

cC = chol(C)
oof = sparse(C)
kmcC = sparse(chol(full(oof(symrcm(oof), symrcm(oof)))))

figure
hold on
grid on
spy(cC)
hold off

figure
hold on
grid on
spy(kmcC)
hold off


%% Checks.
% Please, firstly execute all tasks for these checks.
checkA = [5  0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];

checkB = [4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];


isequal(checkA, revivedA)

isequal(checkA, fullA)

isequal(checkA, fullFileA)

isequal(checkA, fullDiagA)


isequal(checkB, fullB)

isequal(checkB, fullDiagB)

isequal(checkB, fullSortedB)


figure
hold on
grid on
spy(B)
hold off

figure
hold on
grid on
spy(fullSortedB)
hold off

figure
hold on
grid on
spy(cC)
hold off

figure
hold on
grid on
spy(kmcC)
hold off


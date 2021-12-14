function sumAnswer = TheFunniestFun(sumMember, numOfMembers)
syms n;

sums = ones(1, numOfMembers);
members = ones(1, numOfMembers);
x = [];
y = inline(sumMember);

for i=1:numOfMembers
    x(i) = i;
    members(i) = y(i);
    sums(i) = symsum(sumMember, n, 1, i);
end

%members(1) = sums(1);
%for i=2:numOfMembers
    %members(i) = sums(i) - sums(i - 1);
%end

figure
hold on
grid on
title(char(sumMember))
plot(x, members)
plot(x, sums)
legend('members', 'partial sums')
hold off

sumAnswer = symsum(sumMember, n, 1, Inf);

if(sumAnswer == Inf)
    display('The row diverges, the sum is:')
else
    display('The row converges, the sum is:')
end
end
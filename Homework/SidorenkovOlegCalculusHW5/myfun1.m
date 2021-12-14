function f = myfun1(x)
% myfun1 - one of my first functions.
% Looks like you decided to check out the description of this function.
% It's prettt simple though.
f = exp(-x) .* sqrt((x.^2 + 1) ./ (x.^4 + 0.1));
end
function f = myfun1(x)
% Looks like you decided to check out the description of this function.
% It's pretty simple though.
f = exp(x .^ 2) .* sqrt((x .^ 3 + 1) ./ (x .^ 5 + x .^ 7 - 1));
end
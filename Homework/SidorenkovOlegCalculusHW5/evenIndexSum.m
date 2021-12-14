function f = evenIndexSum(x)
[l, w] = size(x);
f = sum(x(2:2:w));
end
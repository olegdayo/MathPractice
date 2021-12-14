function f = lastTaskFunRev(v)
x0 = v(1);
y0 = v(2);
f = -1 * sin(pi * x0) .* sin(pi * y0);
end
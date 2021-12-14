function f = pureFun(t)
global globalA
global globalB
f = globalA .* exp(-t) + globalB .* t;
end
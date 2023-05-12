% define the equation
syms t
y = 2 * sin(t) - 3 * cos(t);
d1y = diff(y);
d2y = diff(y, 2);
if simplify(d2y - 11*y) == 4 * cos(6*t)
    fprintf('Satisfied!!!\n');
else
    fprintf('Does not satisfy!!!\n');
end
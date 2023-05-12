clear all;
syms s t;
f1(s) = (1/s);
f2(s) = (2*s^2 / (s^2+9));
f3(s) = (3 / (s^2+9));
ilf1 = ilaplace(f1);
ilf2 = ilaplace(f2);
ilf3 = ilaplace(f3);
fprintf('The inverse Laplace of f(s): ');
f(t) = ilf1 + ilf2 + ilf3;
disp(f)

% ploting the solution
ezplot(f);
title('Laplace transformation of the given function');
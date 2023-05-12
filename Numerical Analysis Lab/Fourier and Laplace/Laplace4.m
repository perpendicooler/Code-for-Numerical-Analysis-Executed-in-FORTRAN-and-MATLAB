clear all;

% define the function
syms s;
f(s) = (s / (s^2-49)) - (3 / (s^2 - 9));
ilf = ilaplace(f); % performing Laplace transformation
fprintf('The inverse Laplace of f(s): ');
disp(ilf)

% ploting the solution
ezplot(ilf);
title('Laplace transformation of the given function');
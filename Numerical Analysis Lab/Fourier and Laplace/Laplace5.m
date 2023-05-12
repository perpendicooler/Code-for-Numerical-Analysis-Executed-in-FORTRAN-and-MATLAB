clear all;

% define the function 
syms s;
a = 1;
y(s) = (2*exp(-a*s)) / (s*(s+1));

% performing inverse Laplace tranform
lt = ilaplace(y);

fprintf('The solution: ');
disp(lt)

% ploting the solution
ezplot(lt, [-5 5]);
title('Forced response on the function');

% define the function
syms t; 
g(t) = t * exp(-3*t);
lap = laplace(g); % Laplace transformation
fprintf('Laplace tranform: ');
disp(lap)

% ploting the solution
ezplot(lap);
title('Laplace transformation of t*exp(-3*t)');


% define function
syms t;
f(t) = 8 * sin(5*t) - exp(-t) * cos(2*t);
lap = laplace(f); % Laplace transformation
fprintf('Laplace tranform: ');
disp(lap)

% ploting the solution
ezplot(lap);
title('Laplace transformation of the given function');
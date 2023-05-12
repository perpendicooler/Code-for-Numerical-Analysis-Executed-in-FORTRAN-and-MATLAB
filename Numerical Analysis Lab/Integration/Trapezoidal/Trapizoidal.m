% function and inputs
f = @(x) sin(x) - log(x) + exp(x);
ll = input('Enter the lower limit: ');
ul = input('Enter the upper limit: ');
n = input('Enter the number of sub-division: ');

h = (ul - ll) / n; % width of sub-intervals

% values of x0 and functional values of x0
x0 = ll : h : ul;
y0 = f(x0);

% performing Trapizoidal rule of integration
 I = (h / 2) * ((y0(1) + y0(end)) + 2 * sum(y0(2 : end - 1)));
 
 fprintf('The numerical integral value of the function is: ');
 disp(I);
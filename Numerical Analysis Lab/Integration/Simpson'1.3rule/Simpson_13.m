% function and inputs
f = @(x) sin(x) - log(x) + exp(x);
ll = input('Enter the lower limit: ');
ul = input('Enter the upper limit: ');
n = input('Enter the number of sub-division: ');

h = (ul - ll) / n; % width of sub-intervals

% values of x0 and functional values of x0
x0 = ll : h : ul;
y0 = f(x0);

% performing Simpson 1/3 rule of integration
 I = (h / 3) * ((y0(1) + y0(end)) + 4 * sum(y0(2 : 2 : end - 1)) + 2 * sum(y0(3 : 2 : end - 2)));
 
 fprintf('The numerical integral value of the function is: ');
 disp(I);
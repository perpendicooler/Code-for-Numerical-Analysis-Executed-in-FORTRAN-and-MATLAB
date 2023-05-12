% function and inputs
f = @(x) sin(x) - log(x) + exp(x);
ll = input('Enter the lower limit: ');
ul = input('Enter the upper limit: ');
n = input('Enter the number of sub-division: ');

h = (ul - ll) / n; % width of sub-intervals

% values of x0 and functional values of x0
x0 = ll : h : ul;
y0 = f(x0);

% performing Simpson 3/8 rule of integration
 I = y0(1) + y0(end);
 for i = 2 : n
     if mod(i - 1, 3) == 0
         I = I + 2 * y0(i);
     else
         I = I + 3 * y0(i);
     end
 end
 I = (3 / 8) * I  * h;
 
 fprintf('The numerical integral value of the function is: ');
 disp(I);
% function and inputs
f = @(x) sin(x) - log(x) + exp(x);
ll = input('Enter the lower limit: ');
ul = input('Enter the upper limit: ');
n = input('Enter the number of sub-division: ');

h = (ul - ll) / n; % width of sub-intervals

% values of x0 and functional values of x0
x0 = ll : h : ul;
y0 = f(x0);

% performing Weddle's rule of integration
I = y0(1) + y0(end);
 for i = 2 : n
     if mod(i - 1, 6) == 1 || mod(i - 1, 6) == 5
         I = I + 5 * y0(i);
     elseif mod(i - 1, 6) == 3
         I = I + 6 * y0(i);
     elseif mod(i - 1, 6) == 0
         I = I + 2 * y0(i);
     else
         I = I + y0(i);
     end
 end
 I = (3 / 10) * I  * h;
 
 fprintf('The numerical integral value of the function is: ');
 disp(I);
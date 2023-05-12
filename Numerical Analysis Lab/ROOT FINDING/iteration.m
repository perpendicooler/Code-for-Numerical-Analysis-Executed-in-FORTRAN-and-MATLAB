% define functions
f = @(x) x*exp(x)-1;
g = @(x)exp(-x);
x0 = input('Enter the initial guess ');
e = input('Enter tolerance: ');
flag = true;
i = 0;

% performing iteration method
while flag == true && i<100
    x = g(x0);
    if abs(x-x0)<e
       flag = false;
    end
    x0 = x;
    i = i+1;
    disp([x, x-exp(-x), i])
end

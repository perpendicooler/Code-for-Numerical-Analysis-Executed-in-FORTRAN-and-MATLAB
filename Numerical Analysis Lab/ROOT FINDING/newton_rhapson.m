% define function
f = @(x) x*exp(x)-1;
g = @(x) exp(x)+x*exp(x);
n = 20;
x0 = input('Enter the initial guess: ');
e = input('Enter number of tolerance: ');
flag = true;
i = 0;

% performing Newton-Raphson method
if g(x0)~= 0
    for i =1:n 
        x1 = x0 - f(x0)/g(x0);
        fprintf("x%d = %.20f\n",i,x1)
        if abs(x1-x0)<e
            break
        end
        x0 =x1;
    end
else 
    disp("newton rhapson failed")  
end
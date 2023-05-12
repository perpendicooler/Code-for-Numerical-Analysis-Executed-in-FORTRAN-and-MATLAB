% inputs and function
f = @(x) x*exp(x)-1;
a = input('Enter the first value: ');
b = input('Enter the second value: ');
n = input('Enter number of iteration: ');
e = input('Enter number of tolerance: ');

% performing Regula-Falsi
if f(a)*f(b) <0    
    for i=1:n
        c = ((b*f(a)-a*f(b))/(f(b)-f(a)))
        fprintf('P%d  =  %.4f \n',i,c)
        if abs(c-b)<e || abs (c-a)<e
            break
        end
        if f(a)*f(c)<0 
            b=c;
        elseif f(b)*f(c)<0
            a=c;
        end
    end  
else
    disp('No Roots between given brackets')
end
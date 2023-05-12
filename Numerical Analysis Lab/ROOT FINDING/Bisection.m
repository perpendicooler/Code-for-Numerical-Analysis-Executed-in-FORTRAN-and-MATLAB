%% Functions
f = @(x) x*exp(x)-1;
a = input('Enter the first value: ');
b = input('Enter the second value: ');
n = input('Enter number of iteration: ');
e = input('Enter number of tolerance: ');

if f(a)*f(b) <0 
    for i=1:n
        c = (a+b)/2;
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
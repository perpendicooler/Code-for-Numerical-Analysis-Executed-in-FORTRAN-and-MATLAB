f = @(x) sin(x) + exp(x);
ll = input('Enter the lower limit: ');
ul = input('Enter the upper limit: ');
n = input('enter the gauss point: ');

% We know for Gauss quadrature the value of x and w came from the legendre
% polynomial
h = (ul-ll)/2;
k = (ul+ll)/2;
s= 0 ;

% for 2 point formula
if n == 2
    w1 =1;
    w2 =1;
    x1 = 1/sqrt(3);
    x2 = -1/sqrt(3);
    G_2 = h *(w1*f(h*x1+k)+w2*f(h*x2+k))
    disp(G_2)
    
% for 3 point formula
elseif n == 3
    w1 = 8/9;
    w2 = 5/9;
    w3 = 5/9;
    x1 = 0;
    x2 = sqrt(3/5);
    x3 = - sqrt(3/5);
    G_3 = h *(w1*f(h*x1+k)+w2*f(h*x2+k)+w3*f(h*x3+k))
    disp(G_3)
end
% taking input for number of equations in the system
n = input('Enter the number of equations: ');

% taking input for the coefficients as column matrix
a = input('Enter the first coefficients of the system: ');
b = input('Enter the secound coefficients of the system: ');
c = input('Enter the third coefficients of the system: ');
d = input('Enter the RHS coefficients of the system: ');

% initial solution
alpha = b;
s = d;

% calculating values of alpha and s
for i = 2:n
    m = a(i) / alpha(i - 1);
    alpha(i) = b(i) - (c(i - 1) * m);
    s(i) = d(i) - (s(i - 1) * m);
end

% back-substituion to find the solution
x(n) = s(n) / alpha(n);
for i = n - 1:-1:1
    x(i) = (s(i) - (c(i) * x(i + 1))) / alpha(i);
end

% printing the solution
for i = 1:n
    disp('The value of x in tri-diagonal System ')
    fprintf('x(%d): %f\n', i, x(i));
end
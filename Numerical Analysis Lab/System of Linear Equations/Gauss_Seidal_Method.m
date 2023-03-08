% enter the coefficient matrix and RHS of the system
a = input('Enter the coefficinet matrix: ');
b = input('Enter the RHS of the system: ');
n = length(b);
it = input('Enter the iteration you want \n');

% checking if the system is valid
ok = 1;
for i = 1: n
    check_sum = 0;
    for j = 1: n
        if i ~= j
            check_sum = check_sum + a(i, j);
        end
    end
    if check_sum >= a(i, i)
        ok = 0;
        break;
    end
end

% setting up tolerance and maximum number of iterations
tol = 1e-6;

% setting up the initial guess for the solution
x0 = zeros(1, n);

% performing Gauss-Seidal iteration method to find solutions for the system
if ok == 0
    fprintf('The system is not valid to solve with this method!!!\n');
else
    x = x0;
    for k = 1: it
        for i = 1: n
            sum = 0;
            for j = 1: n
                if i ~= j
                    sum = sum + a(i, j) * x(j);
                end
            end
            x(i) = (b(i) - sum) / a(i, i)
        end

        % checking convergence
        if norm(x - x0) <  tol
            break;
        end
        x0 = x;
    end
end

% printing the solution 
fprintf('The solutins of the system are in Gauss Seidal Method: \n');
disp(x0);
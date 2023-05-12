% Define the system of ODEs
% x1' = -2*x1 * x2
% x2' = -x2^2
f = @(t, x) [-2*x(1) * x(2); -x(2)^2];

% the initial conditions
x0 = [0 ; 0];

% the time span
tspan = [0, 10];

% solve
[t, x] = ode45(f, tspan, x0);
m = [t,x];
disp(m)

% Ploting
plot(t, x(:,1), 'b-*', t, x(:,2), 'r-o');
legend('x1', 'x2');
xlabel('Values');
ylabel('Solution');
% define the system
% y'' - 2y' + y = exp(-t) with y(0) = 2, y'(0) = 0
dydt = @(t, y) [y(2); 2*y(2) - y(1) + exp(-t)];
y0 = [2; 0]; % define initial conditions
tspan = [0 10]; % time span

% solving the system using ode45
[t y] = ode45(dydt, tspan, y0)

% plot the solution
plot(y(:, 1), y(:, 2))
xlabel('y(t)')
ylabel("y'(t)")
title('Solution plot for the system')
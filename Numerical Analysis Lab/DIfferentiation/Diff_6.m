% define the system
% y' = t^2 * y = 0 with y(0) = 1 for 0 <= t <= 2
dydt = @(t, y) t^2 * y + 1;

y0 = 1; % define initial condition
tspan = [0 2]; % time span

% solving the system using ode45
[t y] = ode45(dydt, tspan, y0)

% plot the solution
plot(t, y, 'r-o')
xlabel('Time')
ylabel('y(t)')
title('Solution to the given ODE')
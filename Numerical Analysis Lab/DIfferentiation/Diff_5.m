% define the system
% y' = -t * y + 1 with y(0) = 1
dydt = @(t, y) -t * y + 1;

y0 = 1; % define initial condition
tspan = [0 10]; % time span

% solving the system using ode45
[t y] = ode45(dydt, tspan, y0)

% plot the solution
plot(t, y, 'r-*')
xlabel('Time')
ylabel('y(t)')
title('Solution to the given ODE')
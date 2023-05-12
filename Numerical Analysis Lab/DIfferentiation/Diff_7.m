% define the system
% dy/dt = 2 / sqrt(1-t^2) with y(0) = 1 for -1 < t < 1
dydt = @(t, y) 2 / sqrt(1 - t^2);

y0 = 1; % define initial condition
tspan = [-1 1]; % time span

% solving the system using ode45
[t y] = ode23(dydt, tspan, y0)

% plot the solution
plot(t, y, 'r-*')
xlabel('Time')
ylabel('y(t)')
title('Solution to the given ODE')
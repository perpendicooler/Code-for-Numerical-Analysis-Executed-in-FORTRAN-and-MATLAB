% define the ODE
% y' = -2 * 3 * y with y(0) = 0
dydt = @(t, y) -2*3*y;

% define the initial condition
y0 = 0;

% define time span
tspan = [0 10];

% solving the ODE using ode45
[t y] = ode45(dydt, tspan, y0);

% plot the solution
plot(t, y, 'b-*')
xlabel('Time')
ylabel('y(t)')
title('Solution to the given ODE')
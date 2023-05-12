% define the system
% y' = y with y(0) = 1
dydt = @(t, y) y;

y0 = 1; % define initial condition
tspan = [0 10]; % time span

% solving the system using ode23
[t y] = ode23(dydt, tspan, y0);
total_pts_23 = length(t)

% solving the system using ode45
[t y] = ode45(dydt, tspan, y0);
total_pt_45 = length(t)

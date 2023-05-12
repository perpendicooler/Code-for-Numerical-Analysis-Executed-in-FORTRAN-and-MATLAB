% Define the system of ODEs
% x'' + x' + x/y = 0
% p'=-1/2 * p - x/y ; 
%initial conditions
% x(0) = 4, p(0) = 0
%%

% Set the initial conditions
y0 = [4; 0 ;0];

% Set the time span
tspan = [0, 10];

% Call the ode45 function
[t, y] = ode45(@myode, tspan, y0);

% Extract x(t), x'(t), and p(t) from the solution
x = y(:,1);
xp = y(:,2);
p = y(:,3);

% Plot the solution
plot(t, x, t, xp, t, p);
legend('x(t)', 'x''(t)', 'p(t)');
xlabel('Time');

function dy = myode(t, y)
    y1 = y(1);
    y2 = y(2);
    y3 = y(3);
    dy = [y2; -y2 - y1/y1(1); -1/2*y3 - y1/y1(1)];
end
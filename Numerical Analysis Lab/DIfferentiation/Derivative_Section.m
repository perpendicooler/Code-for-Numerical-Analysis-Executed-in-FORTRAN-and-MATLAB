% part a
syms x;
f = 1 / (3*x^2 + 1);
first = diff(f);
second = diff(f, 2);

% part b
cri_points = solve(first == 0, x); % critical points
den = diff(3*x^3 + 1);
undefined_pts = solve(den == 0, x); % undefined points

% part c
pts = subs(second, x, cri_points);

% part d
x = linspace(-1, 1, 500);
fx = @(x) 1 ./ (3*x.^2 + 1);
y = fx(x);
plot(x, y)
grid on
hold on
plot(0, fx(0), 'ro')
xlim([-0.1 0.1])
ylim([0 2])
title('Graph of f(x)')
xlabel('x')
ylabel('f(x)')
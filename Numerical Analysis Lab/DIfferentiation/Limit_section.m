syms x;
% Q1
y1 = sin(4 * x) / x;
sol1 = limit(y1, 0);

% Q2
y2 = (x - 2) / abs(x - 2);
sol2 = limit(y2, 2);

% Q3
y3 = cos(x) / (1 + sin(x));
sol3 = limit(y3, pi/2);

% Q4
f = @(x) x./(x.^2 - 3*x);

% plotting 
fplot(f, [-20 20])
grid on

% vertical asymptote
denominator = @(x) x.^2 - 3*x;
v_asymptotes = solve(denominator(x)==0, x);

% horizontal asymptote
h_asymptote_inf = limit(f(x), x, inf);
h_asymptote_ninf = limit(f(x), x, -inf);


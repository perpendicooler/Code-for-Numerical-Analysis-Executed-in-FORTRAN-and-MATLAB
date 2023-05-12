syms x;
f = x * cos(x);
ft = fourier(f);
fprintf('The Fourier transform of the f(x): ');
disp(ft);
ezplot(ft, [-5 5]);
title('Fourier transform of x*cos(x)');
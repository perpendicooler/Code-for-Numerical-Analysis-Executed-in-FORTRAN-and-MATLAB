syms x;
f = x^2;
ft = fourier(f);
fprintf('The Fourier transform of the f(x): ');
disp(ft);
ezplot(ft, [-5 5]);
title('Fourier transform of x^2');
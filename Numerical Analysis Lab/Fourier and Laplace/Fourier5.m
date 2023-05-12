clear all;

t = 0:0.01:10; % time matrix
x = sin(pi*t) + 2*sin(4*pi*t);
subplot(2, 2, 1); 
plot(x); title('main signal'); % ploting the main signal
x_noisy = x + randn(size(t)); % adding noise
subplot(2, 2, 3);
plot(1000*t(1:100), x_noisy(1:100)), xlabel('time(ms)'), title('Noisy singal');

% fast Fourier transform of the noisy signal
FT = fft(x_noisy, 512);
p = FT.*conj(FT)/512;
subplot(2, 2, 4);
plot(FT, p);
title('FFT of noisy signal');

% finding the highest value of power of the signal
[~, idx] = max(FT(1:end/2));
max_freq = (idx-1) / (length(FT)/2) * (1/0.001);
fprintf('The highest power signal is at %0.3f Hz\n', max_freq);
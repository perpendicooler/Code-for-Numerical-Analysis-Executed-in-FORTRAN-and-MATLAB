% define the signal
a = [2, 4, -1, 2];

% calculating the fft of the signal
ft = fft(a);

fprintf('The fast Fourier Transform of a: ');
disp(ft);

%ploting the figure
f = (0:length(ft)-1)/length(ft);
stem(f, abs(ft));
xlabel('Frequency (cycles/sample)');
ylabel('Magnitude');
title('Magnitude of FFT(a)');
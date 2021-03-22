% Dean

clc;
clear;
close all;
row = 4;
column = 1;
% Defining interval for n
n = (-10 : 10);

% frequencyStep = 1;
frequencyStep = 2* pi/length(n);

% Defining signal
xOfN = zeros(1, length(n));
xOfN(9:13) = 1;
subplot(row, column, 1);
stem(n, xOfN);
title('Original signal')
% Defining frequency interval
frequencies = (-2 *pi * 0: frequencyStep : 2*pi*20/21);

result = fourierTransform(xOfN, n, frequencies);

% hold;
subplot(row, column, 2);
plot(frequencies, abs(result))
title('fourier transform with for loop')

resultMatlab = fft(xOfN);
subplot(row, column, 3);
plot(frequencies, abs(resultMatlab));
title('fourier transform with for matlab function')

% Question 3
subplot(row, column, 4);
og = ifft(resultMatlab);
plot(n, xOfN);
title('result of inverse fourier transform')
hold
plot(n, og);






% Dean

clc;
close all;
clear;
row = 1;
column = 2;
frequencyStep = 2*pi/10;

% Defining interval for n
n = (-10 : 10);

% Defining signal

% xOfN = cos((2*pi/10) * n);
xOfN = zeros(1, length(n));
xOfN(9:13) = 1;
% subplot(row, column, 1);
stem(n, xOfN);
margin = 1;
% Defining frequency interval
frequencies = (-margin * pi : frequencyStep : margin * pi);

result = fourierTransform(xOfN, n, frequencies);

% subplot(row, column, 2);
hold;
plot(frequencies, abs(result));
title('result of fourier transform')

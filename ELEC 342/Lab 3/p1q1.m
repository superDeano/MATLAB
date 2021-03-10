% Dean

clc;
close all;
clear;
row = 1;
column = 2;
frequencyStep = 2*pi/1000;

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

% Preallocated array
result = zeros(1, length(frequencies));
for w = 1 : length(frequencies)
   sum = 0;
   
   for index = 1 : length(n)
        sum = sum + (xOfN(index) * exp(-1i * frequencies(w) * n(index)));
   end
   
   result(w) = sum;
   
end
% subplot(row, column, 2);
hold;
plot(frequencies, result)
title('result of fourier transform')

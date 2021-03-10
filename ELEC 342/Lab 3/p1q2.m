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
frequencyStep2 = 2* pi/(21);

% Defining signal
xOfN = zeros(1, length(n));
xOfN(9:13) = 1;
subplot(row, column, 1);
stem(n, xOfN);
title('Original signal')
% Defining frequency interval
frequencies = (-2 *pi * 0: frequencyStep : 2*pi*20/21);
% frequenciesForMatlabResult = (0: 2* pi / length(xOfN) : (length(xOfN) -1)/ length(xOfN) * 2*pi);

% Preallocated array
result = zeros(1, length(frequencies));
for w = 1 : length(frequencies)
   sum = 0;
   
   for index = 1 : length(n)
        sum = sum + (xOfN(index) * exp(-1i * frequencies(w) * n(index)));
   end
   
   result(w) = sum;
   
end

% hold;
subplot(row, column, 2);
plot(frequencies, abs(result))
title('fourier transform with for loop')

resultMatlab = fft(xOfN);
subplot(row, column, 3);
plot(frequencies, abs(resultMatlab));
title('fourier transform with for matlab function')
% hold off;

% Question 3
subplot(row, column, 4);
og = ifft(resultMatlab);
plot(n, xOfN);
title('result of inverse fourier transform')
% hold
plot(n, og);






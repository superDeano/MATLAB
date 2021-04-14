% Dean Chong San
% ID 40061194

clc;
clear;
close all;

row = 3;
column = 1;

f = 10;
steps = 1/100;
t = (0 : steps : 10);

xOfT = sin(2 * pi * f * t) + (2 *cos(4 * pi * t * f)) - sin(6 * pi * f * t);

y = xOfT + randn(1, length(t));

y_Frequency = fft(y);

subplot(row, column, 1);
plot( t, xOfT);
ylabel('x(t)');
xlabel('Time(s)');
title('Sinusoid signal with 3 frequencies');


subplot(row, column, 2);
plot(t, y);
ylabel('y(t)');
xlabel('Time(s)');
title('Signal with Zero-Mean Random Noise');

firstHalf= y_Frequency(1:length(y_Frequency)/2);
frequencies = (0: (50/(length(firstHalf) -1)) :50);
subplot(row, column, 3);
plot(frequencies, abs(firstHalf));
ylabel('FFT');
xlabel('Frequency(Hz)');
title('Single-Sided Amplitude');
disp('number inputs fft');
disp(length(firstHalf));




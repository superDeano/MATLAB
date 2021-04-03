% Dean
% Question 2

clc;
clear;
close all;

row = 2;
column = 2;
forTwoSeconds = 2;
global index;
index = 1;

%%
fs = 8192;
t = (1 : 1/fs : 3);
x1 = sin(2*pi*200*t);

x2 = sin(2*pi*330*t);
x2(1:fs) = 0;

x3 = sin(2*pi*480*t);
x3(1: 2 * fs) = 0;

x = x1 + x2 + x3;

figure 

subplot(row, column, inc());
plot(t, x);
title('Original Signal');

subplot(row, column, inc());
plot(fftshift(abs(fft(x))))
title('X in Freq Dom');

playX = audioplayer(x, fs);
play(playX);

pause(forTwoSeconds);

%% 
H = designfilt('bandstopiir','PassbandFrequency1', 250, 'StopbandFrequency1', ...
    300, 'StopbandFrequency2', 380,'PassbandFrequency2', 430, ...
    'PassbandRipple1', 1, 'StopbandAttenuation',60, ...
    'PassbandRipple2', 1, 'SampleRate', fs);
y = filtfilt(H, x);

subplot(row, column, inc());
plot(t, y);
title('Filtered Signal');

subplot(row, column, inc());
plot(fftshift(abs(fft(y))))
title('Filtered Sig in Freq Dom');

playY = audioplayer(y, fs);
play(playY);
fvtool(H);

% Dean
% Question 3 Part A f)

clc;
clear;
close all;

row = 4;
column = 1;
global index
index = 1;

%%
numberOfSamples = 327680;
range = 1: numberOfSamples;

[y, freqAudio] = audioread('ELEC_364_lab_5_Audio_S.wav');
zeroToOne = y(1: 100000);
subplot(row, column, inc);
% plot(range, y);
zeroTo1Range = (0: 1/ (length(zeroToOne) -1): 1);

plot(zeroTo1Range, zeroToOne);
title('Original Sound');

subplot(row, column, inc);
rangeFft = -0.5 :1/(length(y)-1): 0.5;
L =length(rangeFft);
Y = fft(y,L);

P2 = abs(Y);
P1 = zeros(L,1);

P1(1: L/2) = P2(L/2 + 1:L);
P1(L/2 + 1:L) = P2(1:L/2);
plot(rangeFft, P1);
title('Fourier Transform OG');


% code to resample audio
factor = 8;
y_new = upsample(y, factor);
firstSecond = y_new(1: length(y_new)/4);
range_new = 0: 1/(length(firstSecond) - 1): 1;

subplot(row, column, inc);
plot(range_new, firstSecond);
title('Resampled Signal');

Y = fft(y_new,L);

P2 = abs(Y);
P1 = zeros(L,1);

P1(1: L/2) = P2(L/2 + 1:L);
P1(L/2 + 1:L) = P2(1:L/2);
subplot(row, column, inc);
plot(rangeFft, P1);
title('Fourier Transform of Resample')


% Dean
% Question 3
clc;
clear;
close all;

frequencyAudio = 22050;
numberOfSamples = 44100;
numberOfBitsPerSample = 16;
range = 1: numberOfSamples;

[original, frequencyAudio] = audioread('Original.wav', [1,numberOfSamples]);
figure();
plot(range, original);
title('Original Wave');

[distorted, frequencyAudio] = audioread('Distorted.wav', [1, numberOfSamples]);
figure();
plot(range, distorted);
title('Distorted Wave');

MSE = 0;
for i = range
    MSE = MSE + (original(i)-distorted(i)).^2;
end

MSE = 1/numberOfSamples * MSE;

X = fft(original);
Y = fft(distorted);

H = Y./X;

X_remastered = Y ./ H;

remastered = ifft(X_remastered);

figure();
plot(range,remastered);
title('Remastered Wave');
audiowrite('remastered.wav',remastered,frequencyAudio);


MSE_2 = 0;
for i = range
   MSE_2 = MSE_2 + (original(i)-remastered(i)).^2;
end

MSE_2 = 1/numberOfSamples * MSE_2;
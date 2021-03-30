% Dean
% Prelab 5 Question 1

clc;
clear;
close all;

[y, fs] = audioread('lab_5_Audio_1.wav');

disp('Playing original song')
sound(y, fs);

disp('Playing modified song')
sound(0.25 * y, fs);

sound(4 * y, fs);

sound(y, fs/2);

sound(y, fs*2);

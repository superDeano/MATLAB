% Dean Chong San
% 40061194
clc;
close all;

almostAllZeroes = zeros(1,10);
almostAllZeroes(2) = 1;
almostAllZeroes(4) = 1;

n = 3;
almostAllOnes = ones(1,10);
almostAllOnes(1:n) = 0;

leftHand = [-5:4];
rightHand = [0:9];

subplot(2,2,1);
stem (leftHand, almostAllZeroes);

subplot(2,2,2);
stem (rightHand, almostAllZeroes);

subplot(2,2,3);
stem (leftHand, almostAllOnes);

subplot(2,2,4);
stem (rightHand, almostAllOnes);

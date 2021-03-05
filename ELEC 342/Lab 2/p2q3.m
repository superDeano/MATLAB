% 40061194
% Dean

clc
clear

n = [-10:10];
linearity = 0
timeInvariance = 1

% Testing for Linearity
y1 = 2 * mySystem(n);
y2 = 3 * mySystem(n);
y3 = y1 + y2;

x1 = 2 * n;
x2 = 3 * n;
x3 = x1 + x2;
y4 = mySystem(x3);

testLinearTimeInv(y3, y4, linearity);


% Testing for Time Invariance
row = 1
col = 2
subplot(row, col , 1)
stem(n, mySystem(n));
title('original System')


x1 = n + 2;
y1 = mySystem(x1);
y2 = mySystem(n - 2);
subplot(row, col , 2)
stem(x1, y2);
title('shifted input')
testLinearTimeInv(y1, y2, timeInvariance);
% Dean
clc;
clear;
row = 1;
column = 2;


%  Part a)
subplot(row, column, 1)
n = (0:9);
xOfN = zeros(1,length(n));
xOfN(2:4) = 1;
stem(n, xOfN)
title('x[n]')

% Preallocating for speed
y = zeros(1, length(n));

% Convolution to find y(n)
h = ((1/4).^n).*heaviside(n);
res = conv(xOfN ,h);

for i = 1 : length(n)
    y(i) = res(i);
end

subplot(row, column, 2)
stem (n, y)
title ('result of Convolution')
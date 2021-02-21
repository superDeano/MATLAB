% Dean
clc
clear all;

%  Part a)
subplot(1,3,1)
n = [0:9]
xOfN = zeros(1,length(n))
xOfN(2:4) = 1;
stem(n, xOfN)


y(1) = 0;

for i = 2: length(n)
    y(i) = xOfN(i) + (1/4)* y(i - 1)
end

subplot(1,3,2)
stem (n , y)
h = ((1/4) .^n).*heaviside(n);
res = conv(n ,y)
index = [1: length(res)]
subplot(1,3,3)
stem (index, res)
title ('result of Convolution')
xlabel('n')
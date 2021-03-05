% Dean
clc;
clear;
row = 1;
column = 3;


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

% Preallocation of array so as to improve perf
y_mul = zeros(1, length(xOfN));

N = max(length(xOfN), length(h));

for l = 1 : N
    for m = 1 : N
        j = mod(l-m, N);
        j = j + 1;
        y_mul(l) = y_mul(l) + xOfN(m) * h(j);
    end
end


subplot(row, column, 2)
stem(n, y_mul)
title('Convo w Multiplication')

res = conv(xOfN ,h);

for i = 1 : length(n)
    y(i) = res(i);
end

subplot(row, column, 3)
stem (n, y)
title ('result of Convolution')
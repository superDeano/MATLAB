% Dean Chong San
% 40061194

clc;
clear all;
rows = 4
col = 2
n = [0:10]

x1 = sin ((2 * pi/10)* n);

x2 = cos((2*pi)/10 *n)

x3 = x1 + x2;

y1 = 2 * x1;
y2 = 2 * x2;
y3 = 2 * x3;
y4 = y1 + y2;


subplot(rows, col, 1)
stem (n, x1)
title('x1')

subplot(rows, col, 2)
stem (n, y1)
title('y1')

subplot(rows, col, 3)
stem (n, x2)
title('x1')

subplot(rows, col, 4)
stem (n, y2)
title('y2')

subplot(rows, col, 5)
stem (n, x3)
title('x3')

subplot(rows, col, 6)
stem (n, y3)
title('y3')

subplot(rows, col, 7)
stem (n, y3)
title('y3')

subplot(rows, col, 8)
stem (n, y4)
title('y4')

if (y3 == y4)
    disp('they are linear')
else
    disp('They are not linear')
end

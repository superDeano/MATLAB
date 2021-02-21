% Dean 

clc;
clear all;

rows = 4;
col = 2;

% PART A)
n = [-10:10];
x = exp(-2.*abs(n)) .* sin ((2*pi /36).*n);

% OG Signal
subplot(rows, col, 1)
stem (n, x)
title('x[n] -- og')

% Mirrored Signal
n_inv = -1.* n;
subplot(rows, col, 2)
stem (n_inv, x)
title('x[-n] -- mirror')


% Even Component
x2 = exp(-2.*abs(n_inv)) .* sin ((2*pi /36).*n_inv);
even = (1/2) * (x + x2);

subplot(rows, col, 3)
stem (n, even)
title('x_e[n] -- even')

% Odd Component
odd = (1/2) * (x - x2);
subplot(rows, col, 4)
stem (n, odd)
title('x_o[n] -- odd')

% % % % % % % % % % % % % % % % % % % % % % % % % % % 
% % % % % % % % % % % % % % % % % % % % % % % % % % % 

% PART B)
n = [-5:5];
x = (-1.^(n - 1)).* sin ((2*pi /36).*n);

% OG Signal
subplot(rows, col, 5)
stem (n, x)
title('x[n] -- og')

% Mirrored Signal
n_inv = -1.* n;
subplot(rows, col, 6)
stem (n_inv, x)
title('x[-n] -- mirror')


% Even Component
x2 = (-1.^(n_inv - 1)).* sin ((2*pi /36).*n_inv);
even = (1/2) * (x + x2);

subplot(rows, col, 7)
stem (n, even)
title('x_e[n] -- even')

% Odd Component
odd = (1/2) * (x - x2);
subplot(rows, col, 8)
stem (n, odd)
title('x_o[n] -- odd')


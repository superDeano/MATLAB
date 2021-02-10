% Dean Chong San
% 40061194

clc;
clear all;

% subplot(1,2,1);
n = [0 : 9];
x = n;
y = x.^2;
% stem (n,x)
% subplot(1,2,2);
% stem (n, y)

energyX = 0;
energyY = 0;

for i = 1 : length(n)
    energyX = energyX + x(i)^2;
    energyY = energyY + y(i)^2;
end

% Part a)
disp('Part a)')
disp('energy of X')
disp(energyX)
disp('energy of Y')
disp(energyY)

% Part b)
disp('Part b)')
x = sin( (2* pi) / 10 * n);

for i = 1 : length(n)
    energyX = energyX + x(i)^2;
end

disp('energy of X')
disp(energyX)
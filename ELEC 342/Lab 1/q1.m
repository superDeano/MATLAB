% Dean Chong San
% 40061194
clc;
close all;

radiuses = [1:10];

% Sphere
area = 4 * pi .* radiuses .^2;
volume = 4/3 * pi .* radiuses .^3;

% Square
surfAreaSquare = 6.*radiuses.^2;
volumeSquare = radiuses.^3;

subplot(1,2,1);
plot (radiuses, area);
title('Volume and Area of a sphere');
ylabel('Area/Volume');
xlabel('Radius');
hold on;
plot (radiuses, volume);

hold off;

subplot(1,2,2);
plot (radiuses, surfAreaSquare);
title('Volume and Area of a square');
ylabel('Area/Volume');
xlabel('Length');
hold on;

plot (radiuses, volumeSquare);
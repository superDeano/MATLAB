clear

% The period
T = 3;
W = -69:1:69;
% The frequency
W0 = 2*pi/T; % T = 2pi/3
something = 100;
x =0.6;

% k = -100 : 100
for k = -something : something
    
x = (sinc(k*W0).*dirac(W - k*W0))+ x;

end

x = 4*pi*(x)/3;
plot (W, x);
grid on;
title ('Okay');

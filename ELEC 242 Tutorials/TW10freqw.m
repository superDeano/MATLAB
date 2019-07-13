

function [freqresp,omega] = freqw (ncoefs, dcoefs, omega)
freqresp = polyval (ncoefs, omega)./polyval (dcoefs, omega);
% If no output arguments were specified, plot the frequency response
if nargout == 0
% Compute the magnitude response as a unitless quantity
magresp = abs(freqresp);

% Compute the phase response
phaseresp = angle (freqresp);

h = polyval(ncoefs, omega);

% On the first of two graphs, plot the magnitude response
subplot (3, 1, 1);
plot (omega, magresp, 'g');
y = get(0.7, 'magresp')
grid on;
title ('\color{cyan}Magnitude Response');
xlabel ('\color{blue}Frequency (rad/s)');
ylabel ('\color{green}Magnitude (unitless)');

% On the second of two graphs, plot the phase response
subplot (3, 1, 2);
plot (omega, phaseresp, 'm');
set(gca,'Color','g')
grid on;
title ('\color{black}Phase Response');
xlabel ('\color{green}Frequency (rad/s)');
ylabel ('\color{white}Angle (rad)');

%  Suppose to have another plot
subplot(3,1,3);
plot(omega, freqresp)
set(gca,'Color','y')
grid on;
title('\color{cyan}Frequency Response')
xlabel('\color{red}Rad/S')
ylabel('\color{magenta}Amplitude')
end

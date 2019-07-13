% Assignment of the time axis between zero and one
t = [0: (1/128):1];
% Details about ones and zeros functions
help ones
help zeros
% The ones and zeros functions can be used to generate a square signal (i.e., the impulse response
% of the LTI system). Generation of a square signal called square_tw2 and display of the signal in 
% the time scope using the subplot command
square_tw2 = [ones(1, 64) zeros(1, 65)];
subplot(3, 1, 1);
% Plot the square signal in blue (i.e. ‘b’)
plot(t, square_tw2, 'b');
% Limit the x-axis from 0 to 1 and y-axis from -2 to 2
axis([0, 1, -2, 2]);
grid on;
title('Continuous-Time Square signal & time');
xlabel('t (seconds)');
ylabel('Square');

% -----------------------------------------------------------------------

% Details about linspace function
help linspace
% Generation of a triangular signal called triangle_tw2 and display the signal in the time scope using
% the subplot command
triangle_tw2 = [linspace(0,1,65) linspace(1,0,64)];
subplot(3,1,2);
% Plot the triangular signal in red (i.e. ‘r’)
 plot(t,triangle_tw2,'r');
axis([0, 1, -2, 2]);
grid on;
title('Continuous-Time Triangle signal & time');
xlabel('t (seconds)');
ylabel('Triangle');

% ___________________________________________________________________________________

% Evaluation of the convolution integral of the triangle and impulse signals
conv_of_triangle_and_square = conv(triangle_tw2, square_tw2);
% Plot of the convolution integral in black (i.e. ‘k’)
% plot(t_conv, conv_of_triangle_and_square, 'k');
grid on;
title('Convolution Integral of Trianggle signal & time');
xlabel('t (seconds)');
ylabel('Triangle');

% Evaluation of the convolution integral of the triangle and impulse signals
conv_of_triangle_and_square = conv(triangle_tw2, square_tw2);
L = length(conv_of_triangle_and_square);
t_conv = linspace(0,2,L);
% Plot of the convolution integral in black (i.e. ‘k’)
subplot(3,1,3);
plot(t_conv, conv_of_triangle_and_square, 'k');
grid on;
title('Convolution Integral of Triangle & Impulse signals');
xlabel('t (seconds)');
ylabel('Convolution'); 


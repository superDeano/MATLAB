
J = 0.0046;
B = 0.002;
K = 5;

Kp = 0.5; Kd = 0.01;    % for lead compensator

s = tf('s');
G = K/(s*(J*s+B));

% PID controller
C = (Kp+Kd*s);
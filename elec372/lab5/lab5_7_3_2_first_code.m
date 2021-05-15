
J = 0.0046;
K = 0.002;
B = 0.5;

lead_Kp = 0.5; lead_Kd = 0.01;    % for lead compensator
lag_Kp = 0.5; lag_Kd = 0.1;        % for lag compensator

s = tf('s');
G = K/(s*(J*s+B));

% PID controller
C = (lead_Kp+lead_Kd*s);
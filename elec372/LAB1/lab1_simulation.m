Ka = 2.0;       % Coefficient for Trans-conductance gain
Kt = 0.1;       % Coefficient for Torque constant
Ke = 2546.5;    % Coefficient for Encorder gain

B = 0.002;      % Viscous Constant (N.m.s/rad)
J = 0.0043;     % Constant kg.m^2

s = tf('s');     % Creating a transfer function model
dcm_s = Ka*Kt*Ke/(J*s + B); % Calculating speed (counts/s)
dcm_p = dcm_s/s;            % Calculating position (counts)

ltiview('step',dcm_s, 0:0.1:10);
ltiview('step',dcm_p, 0:0.1:10);
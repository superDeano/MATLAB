clear

% Sample 32 Times
N = 32;% Sample for two seconds and set sampling interval
Ts = 2/N;
% Set sampling rate
fs = 1/Ts;
% Set frequency-domain resolution
df = fs/N;
% Vector of 32 time indices
n = [0:N-1]';
% Vector of Time Domain
t = Ts*n;

% Vector of 32 x(t) function values
x = t.*(1-t).*rectangularPulse((t-1/2));

% Vector of 32 X(f) approximate CTFT values
X = Ts*fft(x);

% Vector of 16 frequency indices
k = [0:N-1]';

% Graph the results
subplot(3,1,1);
p = plot(t,x,'r') ; set(p,'LineWidth',2) ; grid on ;
xlabel('Time, t (s)') ; ylabel('x(t)') ;
title('Second Plot (32 Indices)');

subplot(3,1,2);
p = plot(k*df, abs(X(1:N)),'c') ; set(p,'LineWidth',2) ; grid on ;
xlabel('Frequency, f (Hz)') ; ylabel('|X(f)|') ;

subplot(3,1,3); 
p = plot(k*df, angle(X(1:N)),'y') ; set(p,'LineWidth',2) ; grid on ; 
xlabel('Frequency, f (Hz)') ; ylabel('Phase of X(f)') ;
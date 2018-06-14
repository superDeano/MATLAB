clear

% Sample 32 times
N = 32 ;
% Sample for two seconds and set sampling interval
Ts = 2/N ;
% Set sampling rate
fs = 1/Ts ;
% Set frequency-domain resolution
df = fs/N ;
% Vector of 32 time indices
n = [0:N-1]' ;
% Vector of times
t = Ts*n ;
% Vector of 32 x(t) function values
x = t.*(1-t).*rectangularPulse((t-1/2)) ;
% Vector of 32 X(f) approximate CTFT values
X = fftshift(Ts*fft(x)) ;
% Vector of 32 frequency indices
k = [-N/2:N/2-1]' ;
% Graph the results subplot(3,1,1) ;
subplot(3,1,1);
p = plot(t,x,'r') ; set(p,'LineWidth',2) ; grid on ;
xlabel('Time, t (s)') ; ylabel('x(t)') ;
title('Third Plot (Part B)');

subplot(3,1,2) ;
p = plot(k*df,abs(X),'g') ; set(p,'LineWidth',2) ; grid on ;
xlabel('Frequency, f (Hz)') ; ylabel('|X(f)|') ;

subplot(3,1,3) ;
p = plot(k*df,angle(X),'m') ; set(p,'LineWidth',2) ; grid on ;
xlabel('Frequency, f (Hz)') ; ylabel('Phase of X(f)') ;
%To clear the whole stuffs, make it new and free
clear
f=100; T0=1/f; fmax=30*f;
Tmin =1/fmax; dt = Tmin/16;
k= (-30:1:30);
%t=(-15:0.001:15)/1000;
t=(-15:dt:15)/1000;

% Initially the sum is intialized
sum =0;




%The for loop coutner
for counter = -30:30
 
%Doing the summation
sum = (sinc(counter/10).*exp(i.*200.*pi.*counter.*t))+ sum;

end

% Getting the real part
y = real(sum/10);
% Plotting the stuffs
plot (t,y,'r');
% Graph specs
xlabel ('time (ms)')
ylabel('idk YET')
title('trying')
grid on

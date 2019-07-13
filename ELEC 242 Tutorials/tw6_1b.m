% To clear stuffs
clear

t=(-200:0.001:200)/1000;
k= (-30:1:30);
w=size(k)

% Initializing the sum to be zero at first
sum =0;
for counter =-9:1:9
    
% Doing the calculations
  sum = ((sinc((counter +2)/2) -sinc((counter-2)/2)).*exp(i.*10.*pi.*counter.*t))+sum;
    
end

y = real(sum.*i/4);

plot (t,y,'g'
);
title('The Title')
xlabel ('Time (ms)')
ylabel('idk')
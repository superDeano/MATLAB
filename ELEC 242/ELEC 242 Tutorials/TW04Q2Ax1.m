
t =[-3:0.01:12];

h=(5/4).*(exp(-t)- exp(-5.*t)).*heaviside(t);



x= 0.*(t <2) + (4.*t - 8).*(2<=t & t<5)+(-6.*t +42).*(5<= t & t <7) + 0.*(t>=7);
z= conv(h,x);


l = length (z);
t_conv = linspace (-3,12,l);
subplot(6,1,1)
 plot(t_conv, z,'b');
 title('a)')
 
 
 
 
 h=(5/4).*(exp(-(8-t))- exp(-5.*(8-t))).*heaviside(8-t);
 y = conv(h,x);
 l1 = length (y);
 t2_conv = linspace(-3,12,l1);
 subplot(6,1,2)
 plot(t2_conv, y,'r');
 title('c')
 
  
 
 h=(5/4).*(exp(-(4-t))- exp(-5.*(4-t))).*heaviside(4-t);
 y = conv(h,x);
 l1 = length (y);
 t2_conv = linspace(-3,12,l1);
 subplot(6,1,3)
 plot(t2_conv, y,'r');
 title('b')
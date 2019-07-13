r = roots([-2 -1 -3  0 2 0 1 -3])




plot(real(r),imag(r),'rx')
grid on
%The background colour
set(gca,'Color','y')
title ('\color{red}Poles');
descr={'The system is not causal since there are some poles on the right side of the axis.'}

%To display text onto the graph
text(-1.85, -1.82, descr)

xlabel ('\color{blue}Real(s)');
ylabel ('\color{blue}Imaginary(s)');

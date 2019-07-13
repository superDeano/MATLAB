
clc
clear


array = (-10:0.1:10);
result= [size(array)];
resultShifted = [size(array)];
soz = size(array);
for n =1: soz(2)
    
result(n) = Quest1A (array(n));

resultShifted(n) =-3 *Quest1A(4 - array(n));

end

plot (array, result)
hold on
plot (array, resultShifted)
hold off
title ('MF')
%xlabel('x label')
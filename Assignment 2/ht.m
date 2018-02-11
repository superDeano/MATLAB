function lol = eFunc (x)
lol = y(1, length(x));

for i = 1 : length(x)
    
    lol(i) = exp(-0.2*(x(i)-1)).*(unitStep(x(i)-1)- unitStep((x(i)-8));
 
end
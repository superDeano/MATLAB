%The impulse response

function lol = ht (x)
lol = zeros(1, length(x));

for i = 1 : length(x)
    
    lol(i) = exp(-0.2*(x(i)-1))*(unitStep(x(i)-1)- unitStep((x(i)-8)));
 
end
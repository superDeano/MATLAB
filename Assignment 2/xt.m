%The excitation input
%The array yolo does not have a fix quantity so the function will be able
%to calculate the values using the inputs

function yolo = xt (x)
yolo = zeros(1, length(x));

for i = 1 : length(x)
    
    yolo(i) = (exp(-0.25*(x(i)))*(unitStep(x(i))- unitStep(x(i)-10)));
 
end
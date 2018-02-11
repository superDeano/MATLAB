function yolo = eFunc (x)
yolo = y(1, length(x));

for i = 1 : length(x)
    
    yolo(i) = exp(-0.25).*(unitStep(x(i))- unitStep(x(i)-10));
 
end
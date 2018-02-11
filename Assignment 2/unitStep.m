function omg = unitStep(x)
omg = y(1, length(x));

for i = 1 : length(x)
    if x(i) >= 0
        omg(i) = 1;
    else
        omg(i) = 0;
    end
end
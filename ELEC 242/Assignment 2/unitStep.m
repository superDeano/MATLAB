%The unit step function
%For a certain range of value, it will calculate the values

function omg = unitStep(x)
omg = zeros(1, length(x));

for i = 1 : length(x)
    if x(i) >= 0
        omg(i) = 1;
    else
        omg(i) = 0;
    end
end
% Function which returns a tuple 
function [value, d1, d2]  = f3 ( number )

value = f1( number)
d1 = 1 - 1/number
d2 = 1/(number.^2)

end
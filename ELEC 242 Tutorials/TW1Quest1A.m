function x = Quest1A(t)
if t <= -1
    x = -2;

elseif (t > -1) && (t <= 1)
        x = 2*t;
   
    elseif (t > 1 ) && (t <=3)
            x = 3 - t^2;
            
        elseif t > 3
            x = -6;
end
 end

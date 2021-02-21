function linear = testLinearity(y ,y2, type)

    linear = (y == y2);
    if type == 0
        if (linear)
            disp('it is linear')
        else
            disp('it is not linear')
        end
    else 
        if (linear)
        	disp('it is time Invariant')
        else
            disp('it is not time Invariant')
        end
    end
end


% The Bisection Algorithm
function bisection()
a = 1;
b = 2;
f_a = 3;
f_b = 4;
x_m = 5;
f_xm = 6;
update = 7;
run = 1;

matrix_result = zeros(9);

while true
    % Choosing two random numbers
    firstNumber = randi([-10,10]);
    secondNumber = randi([-10,10]);
    
    if f(firstNumber) * f(secondNumber) > 0
        matrix_result(run, a) = firstNumber;
        matrix_result(run, b) = secondNumber;
        matrix_result(run, f_a) = f(firstNumber);
        matrix_result(run, f_b) = f(secondNumber);
        break;
    end
end


approximatingTheAnswer(firstNumber, secondNumber, run);

end


    function approximatingTheAnswer(firstNumber, secondNumber, run)
    
    
        % Calculating the MidPoint of A and B
        midPoint = (secondNumber - firstNumber)/2;
        matrix_result(run, x_m) = midPoint;
        
        
        if (f(firstNumber)* f(midPoint)) < 0
            approximatingTheAnswer(midPoint, secondNumber);
        else
            approximatingTheAnswer(firstNumber, midPoint);
        end
        
    end

%Dean Chong San and Etienne Berube
%The time for running this code might be a bit long. Sorry.

tau = (-20:0.01:20); %The array of values for tau to make the graph as precise as possible
t = (-10:0.1:20); %Range of values for time t

%a)
xt1 = xt(tau);
ht1 = ht(-tau-1);
%plotting the graphs
subplot(3,2,1); plot(tau, xt1, tau, ht1); xlabel('tau'); ylabel('Y axis'); title('Part a)'); grid on; grid minor;
subplot(3,2,2); plot (tau, xt1.*ht1); xlabel('tau'); ylabel ('Amplitude'); title ('Multiplication a)'); grid on; grid minor;

%b)
%making the new function ht with a different value for t. The xt1 does not
%change
ht2 = ht (-tau +2);
%Plotting the graphs
subplot (3,2,3); plot (tau, xt1, tau,ht2); xlabel('tau'); ylabel ('Amplitude'); title ('Part b)'); grid on, grid minor;
subplot (3,2,4); plot (tau, xt1.*ht2); xlabel('tau'); ylabel('Amplitude') ;title('Multiplication b)'); grid on; grid minor;

%c)
%Calculating the next function with the next value for t
ht3 = ht(-tau +15);
%Plotting the graphs
subplot (3,2,5); plot (tau, xt1, tau, ht3); xlabel ('tau'); ylabel ('Amplitude'); title ('Part c)'); grid on; grid minor;
subplot (3,2,6); plot (tau, xt1.*ht3); xlabel('tau'); ylabel ('Amplitude'); title('Mutiplication c)'); grid on; grid minor;

%d)
%The array to store to store the values for which the multiplicatio is 0.
toStore = zeros(1,2000);
%A counter which starts at 0
i = 0;

%for loop to go through all the t values to look for the right interval
for I = t
    for z = tau
        if ((xt(z)*(ht(-z + I))) ~= 0) %the argument looking for which t value the multiplication is 0
            i = i + 1; %counter gets incremented
            toStore(i) = I; %if the conditions is satisfied then the values is kept in the array
            break;
        end
    end
end
    
%Displaying the time for which the multiplication is not zero
disp(toStore(1))%displaying the first value
disp(toStore(i))%Displaying the last value
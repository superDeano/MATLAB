function result = fourierTransform(signal, interval)
global w
% Preallocated array
result = zeros(1, length(w));
for w_in = 1 : length(w)
   sum = 0;
   
   for index = 1 : length(interval)
        sum = sum + (signal(index) * exp(-1i * w(w_in) * interval(index)));
   end
   
   result(w_in) = sum;
   
end

end
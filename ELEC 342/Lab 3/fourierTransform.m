function result = fourierTransform(signal, interval, frequencies)
% Preallocated array
result = zeros(1, length(frequencies));
for w = 1 : length(frequencies)
   sum = 0;
   
   for index = 1 : length(interval)
        sum = sum + (signal(index) * exp(-1i * frequencies(w) * interval(index)));
   end
   
   result(w) = sum;
   
end

end
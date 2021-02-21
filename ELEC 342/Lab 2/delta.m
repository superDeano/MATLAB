function [res] = delta (x)

%     if (x == 0) 
%         res = 1;
%     else 
%         res = 0;
%     end
 res = zeros(1, length(x));
 for i = 1 : length(x)
     if x(i) == 0
         res(i) = 1;
     end
 end

end
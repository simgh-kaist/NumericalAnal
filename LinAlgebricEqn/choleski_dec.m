function [outputArg1,outputArg2] = choleski_dec(A)
% Compute L in Choleski's decomposition A = LL'

n = size(A,1);
for i=1:n
    temp = A(i,i) - dot((A(i,1:i-1)))

end


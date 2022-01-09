function [L] = choleski_dec(A)
% Compute L in Choleski's decomposition A = LL'

n = size(A,1);
for i=1:n
    temp = A(i,i) - dot((A(i,1:i-1)), A(i,1:i-1));
    if temp<0.0
        error('Not Positive Definite')
    end
    A(i,i) =sqrt(temp);
    for j=i+1:n
        A(j,i) = (A(j,i)-dot(A(j,1:i-1),A(i,1:i-1)))/A(i,i);
    end
end
L=tril(A);
function [L, A] = lu_dec3(A)
% diag_dec returns LU decomposition of n-diagonal decomposition.
%   자세한 설명 위치
    n = size(A,1);
    L= eye(n);
    for i=2:n
        lambda = A(i,i-1)/A(i-1,i-1);
        A(i,:) = A(i,:) - lambda*A(i-1,:);
        L(i,i-1)=lambda;
    end
end
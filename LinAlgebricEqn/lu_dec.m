function [L, U, A] = lu_dec(A)
% Make A (or augmented matrix) be upper triangle matrix by using 
% Gauss Elimination method.
    n = size(A,1);
    L=eye(n);
    U=zeros(n);
    for i=1:n
        for j=i+1:n
            if A(j,i)~=0
                lambda = A(j,i)/A(i,i);
                A(j,i+1:end) = A(j,i+1:end) - lambda * A(i,i+1:end);
                L(j,i)=lambda;
                A(j,i)=lambda;
            end
        end
        U(i,i:end) = A(i,i:end);
    end
end


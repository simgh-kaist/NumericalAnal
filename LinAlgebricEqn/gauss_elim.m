function [A] = gauss_elim(A)
% Make A (or augmented matrix) be upper triangle matrix by using 
% Gauss Elimination method.
    n = size(A,1);
    for i=1:n
        for j=i+1:n
            if A(j,i)~=0
                lambda = A(j,i)/A(i,i);
                A(j,i:end) = A(j,i:end) - lambda * A(i,i:end);
            end
        end
    end
end
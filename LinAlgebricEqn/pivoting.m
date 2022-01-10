function [A, b] = pivoting(A, b)
% PIVOTING A and b
    n = size(A,1);
    s = zeros(n,1);
    for i=1:n
        s(i) = max(abs(A(i,1:n)));
    end

    for i=1:n
        [Amax, p] = max(abs(A(i:n,i))./s(i:n));
        p = p+i-1;
        if p~=i
            A = swap(A,i,p);
            b = swap(b,i,p);
        end
    end


    function [A] = swap(A, i, j)
        temp = A(i,:);
        A(i,:) = A(j,:);
        A(j,:) = temp;
    end
end


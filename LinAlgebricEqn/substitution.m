function [x] = substitution(aug_mat,type)
% Do back or forward substitution with given augmented matrix
%   자세한 설명 위치
    if type=="f"
        n = size(aug_mat,1);
        x = zeros([n,1]);
        x(1) = aug_mat(1,n+1)/aug_mat(1,1);
        for i=1:n
            sum=0;
            for j=i-1:-1:1
                sum = sum + aug_mat(i,j)*x(j);
            end
            x(i) = (aug_mat(i,n+1)-sum)/aug_mat(i,i);
        end
    elseif type=="b"
        n = size(aug_mat,1);
        x = zeros([n,1]);
        for i=n:-1:1
            sum=0;
            for j=i+1:n
                sum = sum + aug_mat(i,j)*x(j);
            end
            x(i) = (aug_mat(i,n+1)-sum)/aug_mat(i,i);
        end
    else
        x = nan;
    end
end


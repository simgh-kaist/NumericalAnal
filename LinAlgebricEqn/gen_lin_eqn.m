function [A,b,aug_mat] = gen_lin_eqn(n, opt)
% Generate Linear Algebric Equations with size n
    if opt == "normal"
        A = rand(n);
        b = rand([n,1]);
        aug_mat = [A,b];
    elseif opt=="tri_diag"
        A = diag(rand(1,n))+diag(rand(1,n-1),1)+diag(rand(1,n-1),-1)
        b = rand([n,1]);
        aug_mat = [A,b];
    else
        error("wrong option")
    end
end


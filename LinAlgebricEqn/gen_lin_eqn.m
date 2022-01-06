function [A,b,aug_mat] = gen_lin_eqn(n)
% Generate Linear Algebric Equations with size n
    A = rand(n);
    b = rand([n,1]);
    aug_mat = [A,b];
end


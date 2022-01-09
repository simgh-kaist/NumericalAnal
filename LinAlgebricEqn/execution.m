clear;
clc;
[A,b,aug_mat] = gen_lin_eqn(5, "tri_diag");

[L,U] = lu_dec3(A)
A
L*U
% direct_result = inv(A)*b


% my_result = substitution(gauss_result, "b");

% inv(A)*b
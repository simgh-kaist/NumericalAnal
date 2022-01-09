clear;
clc;
[A,b,aug_mat] = gen_lin_eqn(3);

% direct_result = inv(A)*b
gauss_result = gauss_elim(A)

[l,u, lu_result] = lu_dec(A);
[L] = choleski_dec(A);
L*L'
A

% my_result = substitution(gauss_result, "b");

% inv(A)*b
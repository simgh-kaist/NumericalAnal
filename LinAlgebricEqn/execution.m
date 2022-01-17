clear;
clc;
[A,b,aug_mat] = gen_lin_eqn(3, "normal");

% conj_grad(func, zeros(5,1), b)
% cgs(A,b)

% feval(@func, b)
fun = @(x)[A*x]

conj_grad(A,zeros(3,1), b);
% conj_grad()

% direct_result = inv(A)*b

% my_result = substitution(gauss_result, "b");

% inv(A)*b
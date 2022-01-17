clear;
clc;
x = [-2,1,4,-1,3,-4];
y = [-1,2,59,4,24,-53];


a = newton_coeff(x, y);
newton_poly(a, x, 2)
neville(x, y, 2)
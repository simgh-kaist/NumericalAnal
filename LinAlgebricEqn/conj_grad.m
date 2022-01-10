function [x, num_iter] = conj_grad(func,x,b,epsilon)
%CONJUGATED 이 함수의 요약 설명 위치
%   자세한 설명 위치
    if nargin==3; epsilon = 1.0e-9; end
    n = length(b);
    r = b - feval(func, x)
    s=r
    for num_iter=1:3
        u = feval(func, s)
        dot(s,u)
        dot(s,r)
        alpha = dot(s,r)/dot(s,u)
        x = x + alpha * s
        r = b - feval(func, x)
        if sqrt(dot(r,r))<epsilon
            return
        else
            beta = -dot(r,u)/dot(s,u)
            s = r + beta * s
        end
    end
    error('Too many iter');

end



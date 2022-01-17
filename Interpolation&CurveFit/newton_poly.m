function p = newton_poly(a, x_data, x)
%UNTITLED 이 함수의 요약 설명 위치
%   자세한 설명 위치
    n = length(x_data);
    p = a(n);
    for i = 1:n-1
        p = a(n-i) + (x-x_data(n-i))*p;
    end
end


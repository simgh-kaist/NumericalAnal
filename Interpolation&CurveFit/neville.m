function y_interp = neville(x_data, y_data, x)
%NEVILLE 이 함수의 요약 설명 위치
%   자세한 설명 위치
    n = length(y_data);
    y = y_data;
    for i = 1:n-1
        y(1:n-i) = ((x-x_data(i+1:n)).*y(1:n-i)+...
            +(x_data(1:n-i)-x).*y(2:n-i+1))...
            ./(x_data(1:n-i)-x_data(i+1:n));
    end
    y_interp = y(1);
end
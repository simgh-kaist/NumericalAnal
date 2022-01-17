function a = newton_coeff(x_data, y_data)
%NEWTON_COEFF 이 함수의 요약 설명 위치
%   자세한 설명 위치
    n = length(x_data);
    a = y_data;
    for i = 2:n
        a(i:n)=(a(i:n)-a(i-1))./(x_data(i:n) - x_data(i-1));
    end
end


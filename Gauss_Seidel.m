function x = gauss_seidel(A, b, N, tol)
    n = length(b);
    x = zeros(n,1);

    for k = 1:N
        x_old = x;
        for i = 1:n
            sum = 0;
            for j = 1:i-1
                sum = sum + A(i,j) * x(j);
            end
            for j = i+1:n
                sum = sum + A(i,j) * x_old(j);
            end
            x(i) = (b(i) - sum) / A(i,i);
        end
        if norm(x - x_old, inf) < tol
            break;
        end
    end
end

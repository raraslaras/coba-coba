function [x] = jacobi(A, b, N, tol)
    n = length(b);
    x = zeros(n, 1);
    x_old = x;

    for k = 1:N
        for i = 1:n
            s = 0;
            for j = 1:n
                if j ~= i
                    s = s + A(i,j) * x_old(j);
                end
            end
            x(i) = (b(i) - s) / A(i,i);
        end

        if norm(x - x_old, inf) < tol
            return;
        end

        x_old = x;
    end
end

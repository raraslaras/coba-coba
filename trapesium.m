function L = trapesium(f, a, b, n)
    h = (b - a) / n;
    x = a:h:b;
    y = f(x);
    
    L = (h / 2) * (y(1) + 2 * sum(y(2:n)) + y(n+1));
end

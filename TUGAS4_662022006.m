function grafik_trigonometri()
    x = 0:0.01:2*pi;
    y = sin(x) + cos(2*x);
    figure;
    plot(x, y, 'r', 'LineWidth', 2);
    title('Grafik y = sin(x) + cos(2x)');
    xlabel('x (rad)');
    ylabel('y');
    grid on;
end


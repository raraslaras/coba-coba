function fungsi_kompleks()
    % Definisi grid
    x = linspace(-2*pi, 2*pi, 500);
    y = linspace(-2*pi, 2*pi, 500);
    [X, Y] = meshgrid(x, y);

    % Fungsi kompleks gabungan
    Z = exp(-0.1*(X.^2 + Y.^2)) .* sin(3*X) .* cos(5*Y) + 0.5*log(X.^2 + Y.^2 + 1);

    % Fungsi tambahan untuk variasi
    F = (sin(X) + cos(Y)).^2 .* exp(-0.01*(X.^2 + Y.^2));

    % Plot 1: Surface 3D
    figure(1)
    surf(X, Y, Z, 'EdgeColor', 'none')
    title('Surface Plot dari Fungsi Kompleks Z')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
    colormap turbo
    colorbar
    lighting gouraud
    camlight headlight
    view(45, 30)

    % Plot 2: Contour dan Contour3
    figure(2)
    subplot(1,2,1)
    contour(X, Y, Z, 50)
    title('Contour dari Z')
    axis equal

    subplot(1,2,2)
    contour3(X, Y, Z, 50)
    title('Contour 3D dari Z')
    axis equal

    % Plot 3: Kombinasi Surface dan Mesh
    figure(3)
    surfc(X, Y, F)
    title('Surface + Contour dari Fungsi F')
    xlabel('X')
    ylabel('Y')
    zlabel('F')

    % Plot 4: Multi-plot sin dan cos termodulasi
    t = linspace(0, 10*pi, 1000);
    f1 = sin(t) .* exp(-0.05*t);
    f2 = cos(2*t) .* exp(-0.05*t);
    f3 = sin(t) .* cos(t/2);

    figure(4)
    plot(t, f1, 'r', 'LineWidth', 2)
    hold on
    plot(t, f2, 'g--', 'LineWidth', 1.5)
    plot(t, f3, 'b-.', 'LineWidth', 1)
    title('Plot Fungsi Teredam')
    xlabel('t')
    ylabel('Amplitude')
    legend('sin*exp', 'cos*exp', 'sin*cos')
    grid on
    hold off

    % Anotasi dan tambahan gaya
    text(10, 0.5, 'Puncak!', 'FontSize', 12, 'Color', 'red', 'Rotation', 45)
end
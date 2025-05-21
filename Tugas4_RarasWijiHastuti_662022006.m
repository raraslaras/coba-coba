% function cos_sin_spiral_pattern()
%     [X, Y] = meshgrid(-5:0.1:5);
%     Z = cos(X.^2 - Y.^2) .* sin(X .* Y);
%     surf(X, Y, Z);
%     title('Cos-Sin Spiral Pattern');
%     shading interp; colormap pink;
%     axis off; view(2);
% end



% function grafik_trigonometri()
%     x = 0:0.01:2*pi;
%     y = sin(x) + cos(2*x);
%     figure;
%     plot(x, y, 'r', 'LineWidth', 2);
%     title('Grafik y = sin(x) + cos(2x)');
%     xlabel('x (rad)');
%     ylabel('y');
%     grid on;
% end


% function grafik_expo_log()
%     x = 0.1:0.1:10;
%     y1 = exp(x);
%     y2 = log(x);
%     
%     figure;
%     subplot(2,1,1);
%     plot(x, y1, 'g', 'LineWidth', 2);
%     title('Fungsi Eksponensial: y = e^x');
%     xlabel('x');
%     ylabel('y');
% 
%     subplot(2,1,2);
%     plot(x, y2, 'm', 'LineWidth', 2);
%     title('Fungsi Logaritma Natural: y = ln(x)');
%     xlabel('x');
%     ylabel('y');
%     grid on;
% end


% function grafik_tangen()
%     x = -pi/2+0.1:0.01:pi/2-0.1;  % Menghindari asimtot
%     y = tan(x);
%     figure;
%     plot(x, y, 'c', 'LineWidth', 2);
%     title('Grafik Fungsi Tangent: y = tan(x)');
%     xlabel('x (rad)');
%     ylabel('y');
%     grid on;
% end


% function grafik_pangkat_pecahan()
%     x = 0:0.01:10;
%     y = x.^(1/3) - 2*x.^(1/2);
%     figure;
%     plot(x, y, 'LineWidth', 2);
%     title('Grafik y = x^{1/3} - 2x^{1/2}');
%     xlabel('x');
%     ylabel('y');
%     grid on;
% end


% function grafik_linear_kuadrat()
%     x = -5:0.1:5;
%     y1 = 2*x + 1;
%     y2 = x.^2;
%     figure;
%     plot(x, y1, 'r--', x, y2, 'b-', 'LineWidth', 2);
%     title('Gabungan: y = 2x + 1 dan y = x^2');
%     legend('Linear: y = 2x + 1', 'Kuadrat: y = x^2');
%     xlabel('x');
%     ylabel('y');
%     grid on;
% end


% function grafik_trigo_custom()
%     x = 0:0.01:4*pi;
%     y = 3*sin(2*x) + 0.5*cos(4*x);
%     figure;
%     plot(x, y, 'm', 'LineWidth', 2);
%     title('y = 3sin(2x) + 0.5cos(4x)');
%     xlabel('x');
%     ylabel('y');
%     grid on;
% end


% function grafik_heaviside()
%     x = -5:0.01:5;
%     y = heaviside(x - 1);
%     figure;
%     plot(x, y, 'k', 'LineWidth', 2);
%     title('Fungsi Tangga: y = heaviside(x - 1)');
%     xlabel('x');
%     ylabel('y');
%     ylim([-0.2, 1.2]);
%     grid on;
% end


% function grafik_sawtooth()
%     x = 0:0.01:4*pi;
%     y = sawtooth(x);
%     figure;
%     plot(x, y, 'b', 'LineWidth', 2);
%     title('Fungsi Sawtooth');
%     xlabel('x');
%     ylabel('y');
%     grid on;
% end


% function grafik_lissajous()
%     t = linspace(0, 2*pi, 1000);
%     x = sin(3*t + pi/2);
%     y = sin(5*t);
%     figure;
%     plot(x, y, 'b', 'LineWidth', 2);
%     title('Kurva Lissajous: sin(3t + ?/2), sin(5t)');
%     axis equal;
%     grid on;
% end


% function grafik_heart()
%     t = linspace(0, 2*pi, 1000);
%     x = 16*sin(t).^3;
%     y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
%     figure;
%     plot(x, y, 'r', 'LineWidth', 2);
%     title('Kurva Jantung (Heart Curve)');
%     axis equal;
%     grid on;
% end


% function grafik_contour()
%     [X, Y] = meshgrid(-3:0.05:3, -3:0.05:3);
%     Z = X.^2 - Y.^2;
%     figure;
%     contour(X, Y, Z, 20, 'LineWidth', 1.5);
%     title('Kontur dari Z = X^2 - Y^2');
%     xlabel('X'); ylabel('Y');
%     colorbar;
% end


% function transformasi_matriks()
%     [X, Y] = meshgrid(0:1:5, 0:1:5);
%     V = [X(:), Y(:)]';
%     A = [2 -1; 1 1];  % Matriks transformasi
%     T = A * V;
%     
%     figure;
%     plot(V(1,:), V(2,:), 'bo');
%     hold on;
%     plot(T(1,:), T(2,:), 'ro');
%     for i = 1:size(V,2)
%         line([V(1,i), T(1,i)], [V(2,i), T(2,i)], 'Color', 'k');
%     end
%     legend('Original', 'Transformed');
%     title('Transformasi Matriks 2D');
%     axis equal;
%     grid on;
% end


% function sistem_dinamik_linear()
%     [X, Y] = meshgrid(-2:0.5:2, -2:0.5:2);
%     dX = X + Y;
%     dY = -X + 2*Y;
%     
%     figure;
%     quiver(X, Y, dX, dY, 'r');
%     title('Sistem Dinamik: dx/dt = x + y, dy/dt = -x + 2y');
%     xlabel('x'); ylabel('y');
%     axis tight;
%     grid on;
% end



% function grafik_fraktal_pohon()
%     figure;
%     axis equal off;
%     hold on;
%     draw_branch(0, 0, pi/2, 10);
% end
% 
% function draw_branch(x, y, angle, len)
%     if len < 1
%         return;
%     end
%     x2 = x + len*cos(angle);
%     y2 = y + len*sin(angle);
%     plot([x x2], [y y2], 'g', 'LineWidth', len/5);
%     draw_branch(x2, y2, angle + pi/6, len * 0.7);
%     draw_branch(x2, y2, angle - pi/6, len * 0.7);
% end


% function grafik_spiral_log()
%     theta = linspace(0, 6*pi, 1000);
%     r = exp(0.1*theta);
%     x = r .* cos(theta);
%     y = r .* sin(theta);
%     figure;
%     plot(x, y, 'm', 'LineWidth', 2);
%     title('Spiral Logaritmik: r = e^{0.1?}');
%     axis equal;
%     grid on;
% end


% function grafik_paraboloid()
%     [X, Y] = meshgrid(-2:0.1:2);
%     Z = X.^2 + Y.^2;
%     figure;
%     surf(X, Y, Z);
%     title('z = x^2 + y^2');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     shading interp; colormap jet;
% end


% function grafik_sin_quadratic()
%     [X, Y] = meshgrid(-3:0.1:3);
%     Z = sin(X.^2 + Y.^2);
%     figure;
%     surf(X, Y, Z);
%     title('z = sin(x^2 + y^2)');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     shading interp; colormap cool;
% end



% function grafik_sin_cos_sum()
%     [X, Y] = meshgrid(-pi:0.1:pi);
%     Z = sin(X) + cos(Y);
%     figure;
%     mesh(X, Y, Z);
%     title('z = sin(x) + cos(y)');
%     xlabel('x'); ylabel('y'); zlabel('z');
% end


% function grafik_gaussian3d()
%     [X, Y] = meshgrid(-3:0.1:3);
%     Z = exp(-X.^2 - Y.^2);
%     figure;
%     surf(X, Y, Z);
%     title('z = e^{-x^2 - y^2}');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     shading interp; colormap jet;
% end


% function grafik_sin_cos_product()
%     [X, Y] = meshgrid(-pi:0.1:pi);
%     Z = sin(X) .* cos(Y);
%     figure;
%     surf(X, Y, Z);
%     title('z = sin(x) * cos(y)');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     shading interp; colormap hot;
% end



% function grafik_atan2()
%     [X, Y] = meshgrid(-5:0.1:5);
%     Z = atan2(Y, X);
%     figure;
%     surf(X, Y, Z);
%     title('z = atan2(y, x)');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     shading interp; colormap hsv;
% end


% function grafik_log_radial()
%     [X, Y] = meshgrid(0.1:0.1:5);
%     Z = log(sqrt(X.^2 + Y.^2));
%     figure;
%     surf(X, Y, Z);
%     title('z = log(sqrt(x^2 + y^2))');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     shading interp; colormap jet;
% end


% function radial_wave_pattern()
%     [X, Y] = meshgrid(-6:0.1:6);
%     R = sqrt(X.^2 + Y.^2);
%     Z = sin(R) .* cos(R);
%     surf(X, Y, Z);
%     title('Radial Wave Pattern');
%     shading interp; colormap hot;
%     axis off; view(2);
% end


% function star_symmetric_pattern()
%     [X, Y] = meshgrid(-pi:0.05:pi);
%     Z = cos(3*X) .* cos(3*Y);
%     surf(X, Y, Z);
%     title('Star Symmetric Pattern');
%     shading interp; colormap cool;
%     axis off; view(2);
% end


% function cross_wave_pattern()
%     [X, Y] = meshgrid(-4*pi:0.1:4*pi);
%     Z = sin(X) .* sin(Y) .* cos(X + Y);
%     surf(X, Y, Z);
%     title('Cross Wave Pattern');
%     shading interp; colormap jet;
%     axis off; view(2);
% end


% function fan_symmetry_pattern()
%     [X, Y] = meshgrid(-6:0.1:6);
%     theta = atan2(Y, X);
%     R = sqrt(X.^2 + Y.^2);
%     Z = sin(R) .* cos(4 * theta);
%     surf(X, Y, Z);
%     title('Fan Symmetry Pattern');
%     shading interp; colormap autumn;
%     axis off; view(2);
% end


% function circular_flower_pattern()
%     [X, Y] = meshgrid(-5:0.1:5);
%     R = sqrt(X.^2 + Y.^2);
%     theta = atan2(Y, X);
%     Z = sin(6 * theta) .* exp(-0.1 * R.^2);
%     surf(X, Y, Z);
%     title('Circular Flower Pattern');
%     shading interp; colormap copper;
%     axis off; view(2);
% end


% function layered_flower_spiral()
%     [X, Y] = meshgrid(-6:0.05:6);
%     R = sqrt(X.^2 + Y.^2);
%     theta = atan2(Y, X);
%     Z = sin(R) .* cos(8 * theta) + cos(2 * R);
%     
%     surf(X, Y, Z);
%     shading interp;
%     colormap('jet');  
%     title('Layered Flower Spiral');
%     axis off;
%     view(2);  
% end



% function pink_lotus_bloom()
%     [X, Y] = meshgrid(-5:0.05:5);
%     R = sqrt(X.^2 + Y.^2);
%     theta = atan2(Y, X);
%     
%     % Pola bunga lotus berlapis
%     Z = cos(6 * theta) .* exp(-0.5 * R.^2) + sin(3 * R);
%     
%     % Tampilkan grafik
%     surf(X, Y, Z);
%     shading interp;
%     
%     % Warna pink (custom colormap)
%     pink_map = [linspace(1, 1, 256)', linspace(0.6, 0.2, 256)', linspace(0.8, 0.6, 256)'];
%     colormap(pink_map);
%     
%     title('Pink Lotus Bloom');
%     axis off;
%     view(2);  % Tampilan dari atas
% end




  

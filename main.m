% Definisikan fungsi
f = inline('x^2 - 3', 'x');

% Interval [1, 2]
X = [1 2];

% Panggil fungsi BagiDua
[x, galat] = bagidua(f, X);

%panggil fungsi PosisiPalsu
%[x, galat] = PosisiPalsu(f, X);

% Tampilkan hasil
% fprintf('Akar hampiran: %.6f\n', x);
% fprintf('Galat relatif: %.6f%%\n', galat);

disp('akar hampiran = ')
disp(x)
disp('galat = ')
disp(galat)

clc
clear

% No 1 contoh 4.1
%METODE JACOBI
% A = [10, -1, 2, 0;
%     -1, 11, -1, 3;
%     2, -1, 10, -1;
%     0, 3, -1, 8];
% 
% b = [6; 25; -11; 15];
% N = 50;
% tol = 1e-6;
% 
% x = jacobi(A, b, N, tol);
% disp(x)

% METODE GAUSS-SEIDEL
% x_gs = Gauss_Seidel(A, b, N, tol)



% No 2 contoh 10.1
% TRAPESIUM
% f = @(x) 2*x.^2;
% a = 0;
% b = 1;
% n = 10;
%   
% hasil_trapesium = trapesium(f, a, b, n)
% 
% RIEMANN KIRI
% f = @(x) 2*x.^2;
% a = 0;
% b = 1;
% n = 10;
% h = (b - a) / n;
% x = a:h:(b-h); % titik kiri
% L_riemann = sum(f(x)) * h


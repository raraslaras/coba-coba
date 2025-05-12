% function X = jacobi(A,b,X0,N,tol)
% %jacobi menyelesaikan SPL AX = b menggunakan iterasi jacobi
% %
% %input : A = matriks koefisien dari sistem
% %        B = vekktor konstan dari sistem
% %        X0 = penyelesaian awal
% %         N = maksimal iterasi
% %        tol= toleransi keakuratan
% %
% %Output: X = penyelesaian sistem
% 
% if nargin < 5, tol = 1e-6; end
% if nargin < 4, N = 1000; end
% if nargin < 3, X0 = zeros(size(b));end
% n = size (A,1);
% X = X0;
% p = zeros(n,n);
% for i = 1:n
%     for j = 1:n
%         if j ~= i
%             p(i,j) = A(i,j)/A(i,i);%elemen dari matriks inv(D)*(D-A)
%         end
%     end
%     Q(i) = b(i)/A(i,i); %elemen dari matriks inv(D)*b
% end
% while k <= N & norma > tol
%     X = Q' - P*X; % persamaan (4.2)
%     norma = max(abs(X-X0));
%     X0 = X;
% end

function Tn = trapesium(f,x,n)
% trapesium Menyelesaikan integral f(x) atas interval [a,b] menggunakan
% aturan trapesium dengan n subinterval
% Input: f = fungsi yang diintegralkan
% x = vektor [a b]
% n = lebar langkah/ banyak subinterval dalam interval x
% Output: Tn = luas bidang datar yang dibatasi oleh f(x) dan sumbu x dalam
% interval [a,b]
h = (x(2)-x(1))/n;
xvek = x(1):h:x(2);
yvek = f(xvek); % nilai f untuk semua titik diskrit
Tn = h/2*(yvek(1)+sum(yvek(2:n))+yvek(n+1)); % persamaan(10.2)
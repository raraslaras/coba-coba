clc
clear

%kalkulus sederhana
%limit
%contoh 1
% syms x
% limit ((x^3+5)/(x^4+7))
% %
% % contoh 2
% % limit((x-3)/(x-1),1)
% %
% %contoh 3
% syms x
% f = (3*x+5) / (x-3);
% g = x^2+1;
% l1 = limit (f,4)
% l2 = limit (g,4)
% ltambah = limit (f+g,4)
% lkurang = limit (f-g,4)
% lkali = limit (f*g,4)
% lbagi = limit (f/g,4)

%turunan 
% syms t
% f = 3*t^2 + 2*t^(-2);
% diff(f,t)

%sifat turunan
% syms x
% syms t
% 
% f = (x + 2) * (x^2 + 3)
% der1 = diff(f)
% 
% f = (t^2 + 3) * (sqrt(t) + t^3)
% der2 = diff(f)
% 
% f = (x^2 - 2*x + 1) * (3*x^3 - 5*x^2 + 2)
% der3 = diff(f)
% 
% f = (2*x^2 + 3*x) / (x^3 + 1)
% der4 = diff(f)
% 
% f = (x^2 + 1)^17
% der5 = diff(f)
% 
% f = (t^3 + 3* t^2 + 5*t - 9)^(-6)
% der6 = diff(f)


%turunan parsial
% syms x;
% syms y
% %Definisi fungsi
% f = x^2 + 3*x*y + y^3;
% %menghitung turunan parsial terhadap x
% df_dx = gradient (f,x);
% %menghitung turunan parsial terhadap y
% df_dy = gradient (f,y);
% %menampilakn hasil
% disp ('Turunan parsial terhadap x:');
% disp (df_dx);
% disp ('Turunan parsial terhadap y:');
% disp (df_dy);

%Integral
% tak tentu
syms x;
%Definisi fungsi
f = x^2;
%menghitung integrak tak tentu
F = int (f,x);
%menampilakn hasil
disp('integral tak tentu dari f(x) = x^2:');
disp(F);

% integral tentu
%Definisi fungsi
f = @ (x) x.^2;
%batas integral
a = 0;
b = 1;
%menghitung integral tentu
result = integral(f, a, b);
%menampilakan hasil 
disp(['integral dar f(x) = 2x^2 dalam batas 0 hingga 1: ', num2str(result)]);

    

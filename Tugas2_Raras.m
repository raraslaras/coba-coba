% Nested if

umur = input('Masukkan umur: ');

if umur > 0
    if umur < 12
        disp('Anak-anak');
    elseif umur >= 12 && umur < 18
        disp('Remaja');
    elseif umur >= 18 && umur < 60
        disp('Dewasa');
    else
        disp('Lansia');
    end
else
    disp('Umur tidak valid');
end

% While

count = 1;

while count <= 5
    fprintf('Perulangan ke-%d\n', count);
    count = count + 1;
end

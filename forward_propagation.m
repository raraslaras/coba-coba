function output = forward_propagation(X)
    % Fungsi aktivasi
    sigmoid = @(z) 1 ./ (1 + exp(-z));
    relu = @(z) max(0, z);
    
    % Input (X harus vektor kolom 2x1)
    % Contoh: X = [0.5; 0.2];
    
    % Inisialisasi bobot dan bias
    W1 = [0.1, 0.3;
          0.4, 0.2];  % Ukuran 2x2
    b1 = [0.1;
          0.1];       % Ukuran 2x1

    W2 = [0.6, 0.7];  % Ukuran 1x2
    b2 = 0.2;         % Skalar
    
    % Forward Propagation
    Z1 = W1 * X + b1;
    A1 = relu(Z1);

    Z2 = W2 * A1 + b2;
    A2 = sigmoid(Z2);

    % Output akhir
    output = A2;
end

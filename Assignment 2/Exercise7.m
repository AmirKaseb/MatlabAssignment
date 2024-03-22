% Generating time index
n = 0:50;

% Generating Gaussian noise with different variances
w = randn(1, 51);
x1 = cos(0.04 * pi * n) + 0.01 * w;  % Signal with low noise variance (sigma = 0.01)
x2 = cos(0.04 * pi * n) + 0.2 * w;   % Signal with moderate noise variance (sigma = 0.2)
x3 = cos(0.04 * pi * n) + 2 * w;     % Signal with high noise variance (sigma = 2)

% Plotting signals
figure;
stem(n, x1);
title('x[n] (sigma = 0.01)');
xlabel('n');

figure;
stem(n, x2);
title('x[n] (sigma = 0.2)');
xlabel('n');

figure;
stem(n, x3);
title('x[n] (sigma = 2)');
xlabel('n');

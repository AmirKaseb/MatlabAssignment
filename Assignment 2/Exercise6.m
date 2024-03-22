% a.
% Generating signal x1[n] using impulse functions
n_a = 0:25;
x1_a = 0;
for m_a = 0:10
    x1_a = x1_a + (m_a + 1) .* (impulse(n_a - 2 * m_a) - impulse(n_a - 2 * m_a - 1));
end

% Plotting x1[n]
figure;
stem(n_a, x1_a);
title('x1[n]');
xlabel('n');

% b.
% Generating signal x2[n] with different components
n_b = -10:10;
x2_b = (n_b.^2) .* (unitstep(n_b + 5) - unitstep(n_b - 6)) + 10 .* impulse(n_b) ...
    + 20 .* (0.5.^n_b) .* (unitstep(n_b - 4) - unitstep(n_b - 10));

% Plotting x2[n]
figure;
stem(n_b, x2_b);
title('x2[n]');
xlabel('n');

% c.
% Generating signal x3[n] with exponential and cosine components
n_c = 0:20;
x3_c = (0.9.^n_c) .* cos(0.2 * pi * n_c + (pi / 3));

% Plotting x3[n]
figure;
stem(n_c, x3_c);
title('x3[n]');
xlabel('n');

% d.
% Generating periodic signal x4[n]
n_d = -10:9;
period_d = [1, 2, 3, 2];
x4_d = repmat(period_d, 1, length(n_d) / length(period_d));

% Plotting x4[n]
figure;
stem(n_d, x4_d);
title('x4[n]');
xlabel('n');

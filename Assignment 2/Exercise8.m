% Generating time index
n = -10:10;

% Generating complex exponential signal
x = exp((-0.1 + 0.3j) * n);

% Computing magnitude, phase, real part, and imaginary part of the signal
magnitude = abs(x);
phase = angle(x) * (180 / pi); % Converting phase to degrees
real_part = real(x);
imaginary_part = imag(x);

% Plotting magnitude, phase, real part, and imaginary part of the signal
subplot(2, 2, 1);
stem(n, magnitude);
title('Magnitude');
xlabel('n');
ylabel('Magnitude');

subplot(2, 2, 2);
stem(n, phase);
title('Phase');
xlabel('n');
ylabel('Phase (degree)');

subplot(2, 2, 3);
stem(n, real_part);
title('Real part');
xlabel('n');
ylabel('Real part');

subplot(2, 2, 4);
stem(n, imaginary_part);
title('Imaginary part');
xlabel('n');
ylabel('Imaginary part');

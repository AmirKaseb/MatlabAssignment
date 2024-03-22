% Original signal
signal = [1, -2, 4, 6, -5, 8, 10]; % -5 is considered as the zero element
left_padding_value = 5; % Left padding value
right_padding_value = 7; % Right padding value

% Padding the original signal
padded_signal = [zeros(1, left_padding_value), signal, zeros(1, right_padding_value)];
padded_signal_index = (1:length(padded_signal)) - (left_padding_value + 5);

% i) Shifting left by 2 and right by 4
shifted_left_2 = [zeros(1, left_padding_value - 2), signal, zeros(1, right_padding_value + 2)];
shifted_right_4 = [zeros(1, left_padding_value + 4), signal, zeros(1, right_padding_value - 4)];
result_1 = 3 * shifted_left_2 + shifted_right_4 + 2 * padded_signal;

% Plotting result_1
figure;
stem(padded_signal_index, result_1);
title('Result 1');
xlabel('n');

% ii) Shifting left by 4 and right by 1, along with time reversal
shifted_left_4 = [zeros(1, left_padding_value - 4), signal, zeros(1, right_padding_value + 4)];
shifted_right_1 = [zeros(1, left_padding_value + 1), signal, zeros(1, right_padding_value - 1)];
time_reversed_signal = [zeros(1, left_padding_value + 2), fliplr(signal), zeros(1, right_padding_value - 2)];
time_reversed_shifted_right_2 = [zeros(1, left_padding_value + 4), fliplr(signal), zeros(1, right_padding_value - 4)];
result_2 = (shifted_left_4 .* shifted_right_1) + (time_reversed_shifted_right_2 .* padded_signal);

% Plotting result_2
figure;
stem(padded_signal_index, result_2);
title('Result 2');
xlabel('n');

% iii) Summation of shifted signals over different k values
result_3 = 0;
for k = 1:5
    signal_of_k = [zeros(1, left_padding_value + k), signal, zeros(1, right_padding_value - k)];
    result_3 = result_3 + padded_signal_index .* signal_of_k;
end

% Plotting result_3
figure;
stem(padded_signal_index, result_3);
title('Result 3');
xlabel('n');

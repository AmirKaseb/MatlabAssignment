function [u] = unitstep(x)

%   u = UNITSTEP(x) returns a vector u of the same size as x, where each


% Initialize the output vector u with zeros
u = zeros(size(x));

% Loop through each element of the input vector x
for n = 1:length(x)
    % If the current element of x is greater than or equal to 0,
    % set the corresponding element of u to 1
    if x(n) >= 0
        u(n) = 1;
    else
        % Otherwise, set the corresponding element of u to 0
        u(n) = 0;
    end
end
end

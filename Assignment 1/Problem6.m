%Origin Matrix
x=[1:5; zeros(3,5); -1:-1:-5]'
%Required Matrixes
y=x'
z=[x(1:3,:); x(2:-1:1,:)]'
w=[x(:,1)*2 x(:,2:4)+100 x(:,5)/-10]
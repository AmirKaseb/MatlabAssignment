T= 2;
n= -19:19;
x= cos(2*(n*T) ./3);
y= cos(8*pi*(n*T) ./38);

subplot(2,2,1);
stem(n,x);title('x[n]');
subplot(2,2,2);
stem(n,y);title('y[n]');

t = linspace(-40, 40,8000);
x_2= cos(2*(t) ./3);
y_2= cos(8*pi*(t) ./38);

subplot(2,2,3);
plot(t,x_2);title('x(t)');
subplot(2,2,4);
plot(t,y_2);title('y(t)');


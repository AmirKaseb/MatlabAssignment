x= linspace(-2,3,500);
y1=4*ones(1,200);
t=linspace(0,1,100);
y2=cos(2*pi*t/4)+3;
y3=3*ones(1,200);
y=[y1 y2 y3];
figure;
plot(x,y);
axis([-2, 3, 0, 6]);
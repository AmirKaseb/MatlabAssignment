x = linspace(0,10,100);

y1 = sin(x)./ x; 
subplot(2,2,1);
plot(x, y1);title('i');

y2= ((1./(x-1).^2) +x);
subplot(2,2,2);
plot(x, y2);title('ii');

y3=((x.^2)+1)./((x.^2)-4);
subplot(2,2,3);
plot(x, y3); title('iii');

y4=(((10-x).^(1/3))-2)./((4-x.^2).^(1/2));
subplot(2,2,4);
plot(x, y4);title('iv');

    
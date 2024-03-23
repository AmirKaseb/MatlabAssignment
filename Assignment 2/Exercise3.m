Fs=5000;
n=0:100;
t=n*(1/Fs);

F=500;
x=sin(2*pi*F*t);
subplot(2,2,1);
stem(n,x);title('F=500HZ');

F=2000;
x=sin(2*pi*F*t);
subplot(2,2,2);
stem(n,x);title('F=2000HZ');

F=3000;
x=sin(2*pi*F*t);
subplot(2,2,3);
stem(n,x);title('F=3000HZ');

F=4500;
x=sin(2*pi*F*t);
subplot(2,2,4);
stem(n,x);title('F=4500HZ');



Fs=50000;
n=0:100;
t=n*(1/Fs);

F=2000;
x=sin(2*pi*F*t);
figure;
stem(n,x);title('F=2000HZ');

y= x(1:2:101);  
n= 0:2:100;
figure; stem(n,y); title('even');



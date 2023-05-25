 clear all;

Fs=16000;
f=440;
t=[0:2*Fs-1]/Fs;

phi1=pi/2;
phi2=pi;

y=sin(2*pi*f*t);
y1=0.5*sin(2*pi*f*t);
y2=0.25*sin(2*pi*f*t);
y3=sin(2*pi*f*t+phi1);
y4=sin(2*pi*f*t+phi2);

Y1=[y;y1]';
Y2=[y;y2]';
Y3=[y;y3]';
Y4=[y;y4]';

%audio
sound(Y1,Fs);
pause(3);
sound(Y2,Fs);
pause(3);
sound(Y3,Fs);
pause(3);
sound(Y4,Fs);

%plot
figure;
plot(t,y,t,y1,t,y2);
axis([0 0.01 -1.5 1.5]);
title('振幅変化');
legend('元','0.5倍','0.25倍');

figure;
plot(t,y,t,y3,t,y4);
axis([0 0.01 -1.5 1.5]);
title('位相変化');
legend('元','+π/2','+π');
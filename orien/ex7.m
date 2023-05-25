clear;
Fs=8000;
t=[0:Fs-1]/Fs;
phi=60*pi/180;
f=3;

x1=sin(2*pi*f*t);
x2=0.5*sin(2*pi*f*t);
x3=0.5*sin(2*pi*f*t+phi);

figure;
subplot(3,1,1);
plot(t,x2);
subplot(3,1,2);
plot(t,x1,t,x2);
subplot(3,1,3);
plot(t,x1,t,x3);
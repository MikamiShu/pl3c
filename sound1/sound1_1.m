clear all;

Fs=16000;
f1=440;
f2=660;

t1=[0:Fs-1]/Fs;
t2=[0:Fs-1]/Fs;

y1=sin(2*pi*f1*t1);
y2=sin(2*pi*f2*t2);

subplot(2,1,1);
plot(t1,y1);
axis([0 0.01 -1 1]);
xlabel('time[s]');
ylabel('wave');
title('440Hz');
subplot(2,1,2);
plot(t2,y2);
axis([0 0.01 -1 1]);
xlabel('time[s]');
ylabel('wave');
title('660Hz');

sound(y1,Fs);
pause(3);
sound(y2,Fs);


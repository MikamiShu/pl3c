clear all;

Fs=16000;
f1=440;
f2=441;
t=[0:4*Fs-1]/Fs;

y1=sin(2*pi*f1*t);
y2=sin(2*pi*f2*t);

z=y1+y2;

figure;
subplot(2,1,1);
plot(t,y1);
axis([0 0.01 -1 1]);
title('440Hz');
subplot(2,1,2);
plot(t,y2);
axis([0 0.01 -1 1]);
title('441Hz');

figure;
plot(t,z);
xlabel('time[s]');
ylabel('振幅');
%axis([0 0.01 -3 3]);

sound(z,Fs);

%うなりの差が1なので、4秒で4回聞こえるようになる

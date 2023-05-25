clear all;

Fs=16000;
f=440;
t=[0:(Fs-1)]/Fs;

y1=0;
y2=0;
y3=0;

for k=1;
    y1=y1+1/(2*k-1)*sin(2*pi/0.5*(2*k-1)*t);
end

for k=1:5;
    y2=y2+1/(2*k-1)*sin(2*pi/0.5*(2*k-1)*t);
end

for k=1:25;
    y3=y3+1/(2*k-1)*sin(2*pi/0.5*(2*k-1)*t);
end

figure;
plot(t,y1);
xlabel('time[s]');
ylabel('振幅');
axis([0 1 -3 3]);
title('N=1');
figure;
plot(t,y2);
xlabel('time[s]');
ylabel('振幅');
axis([0 1 -3 3]);
title('N=5');
figure;
plot(t,y3);
xlabel('time[s]');
ylabel('振幅');
axis([0 1 -3 3]);
title('N=25');

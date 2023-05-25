clear;

Fs=8192;
f=440;
t=[0:Fs-1]/Fs;
y=sin(2*pi*f*t);

y=y(1,1:1024);

y_f=fft(y);
y_fs=fftshift(y_f);
y_fs=abs(y_fs);

y_x=[-Fs/2:Fs/1024:Fs/2-1];

plot(y_x,y_fs);
xlabel('周波数');
ylabel('振幅');
axis([0 1000 0 600]);

clear;

Fs=8192;

a=zeros(1,128);
b=ones(1,128);

A=[a b a b a b a b];
x=[1:length(A)];

A_f=fft(A);
A_fs=fftshift(A_f);
A_fs=abs(A_fs);

A_x=[-Fs/2:Fs/1024:Fs/2-1];

figure;
plot(A_x,A_fs);
xlabel('周波数');
ylabel('振幅');
axis([0 200 0 600]);

figure;
plot(x,A);
ylabel('振幅');
axis([0 1100 0 1.5]);


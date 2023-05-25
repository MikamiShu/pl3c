clear;

Fs=8192;
t=[0:1/4*Fs-1]/Fs;
T=[0:2*Fs-1]/Fs;

f1=261.38;
f2=293.67;
f3=329.63;
f4=349.23;
f5=392;
f6=440;
f7=493.88;
f8=523.23;

y1=sin(2*pi*f1*t);
y2=sin(2*pi*f2*t);
y3=sin(2*pi*f3*t);
y4=sin(2*pi*f4*t);
y5=sin(2*pi*f5*t);
y6=sin(2*pi*f6*t);
y7=sin(2*pi*f7*t);
y8=sin(2*pi*f8*t);



Y=[y1 y2 y3 y4 y5 y6 y7 y8]%OK
Y_f=fft(Y);
Y_fs=fftshift(Y_f);
Y_x=[-Fs/2:Fs/length(Y):Fs/2-Fs/length(Y)];

figure;
plot(Y_x,Y_fs);
xlabel('周波数');
ylabel('振幅');
axis([-600 600 -1500 1500]);
title('original\_fftshift');

z=zeros(size(Y));
for k=1:length(Y_x);
    if (Y_x(k)<=-375) || (Y_x(k)>=375);
        z(k)=0;
    else
        z(k)=1;
    end
end

Y1=Y_fs.*z;

figure;
plot(Y_x,Y1);
xlabel('周波数');
ylabel('振幅');
axis([-600 600 -1500 1500]);
title('filter\_fftshift');

Y1_ifs=ifftshift(Y1);
Y1_if=ifft(Y1_ifs);

figure;
plot(T,Y1_if);
xlabel('time[s]');
ylabel('振幅');
title('ifft');
xticks(0:0.25:2);
Y_s=real(Y1_if);

sound(Y_s,Fs);


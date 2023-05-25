clear;

%初期設定
Fs=16000;
t1=[0:1/2*Fs-1]/Fs;
len=length(t1);
rng(0,'twister');

%ノイズA
r=2;
noise_a=r.*(rand(1,len)-0.5);
sound(noise_a,Fs);

%ノイズB
fft_a=fft(noise_a);
ffts_a=fftshift(fft_a);
y_x=[-Fs/2:Fs/length(noise_a):Fs/2-Fs/length(noise_a)];
z=zeros(size(y_x));
for k=1:length(y_x);
    if((y_x(k)<=-1020&&y_x(k)>=-1620) || (y_x(k)>=1020&&y_x(k)<=1620));
        z(k)=0;
    else
        z(k)=1;
    end
end
y_b1=ffts_a.*z
ifs_yb=ifftshift(y_b1);
if_yb=ifft(ifs_yb);
noise_b=real(if_yb);

%プロット
subplot(2,1,1);
plot(y_x,ffts_a);
title('fftshift(noise\_a)');
subplot(2,1,2);
plot(y_x,y_b1);
title('fftshift(noise\_a).*filter');

%サウンド
f1=440;
f2=1040;
t2=[0:1/4*Fs-1]/Fs
y1=sin(2*pi*f1*t2);
y2=sin(2*pi*f2*t2);
Y1=[y1 noise_a];
Y2=[y1 noise_b];
Y3=[y2 noise_a];
Y4=[y2 noise_b];
Y1_rep=repmat(Y1,1,8);
Y2_rep=repmat(Y2,1,8);
Y3_rep=repmat(Y3,1,8);
Y4_rep=repmat(Y4,1,8);
Y=[Y1_rep Y2_rep Y3_rep Y4_rep];

sound(Y,Fs);

clear all;
close all;

h=256;
w=256;
f1=1/64;
f2=1/16;
f3=1/4;
img4=zeros(h,w);
img16=zeros(h,w);
img64=zeros(h,w);

for k=1:h;
    for l=1:w;
        img4(k,l)=1+sin(2*pi*f1*k);
        img16(k,l)=1+sin(2*pi*f2*k);
        img64(k,l)=1+sin(2*pi*f3*k);
    end
end

img4_f=fft2(img4);
img16_f=fft2(img16);
img64_f=fft2(img64);
img4_fs=fftshift(img4_f);
img16_fs=fftshift(img16_f);
img64_fs=fftshift(img64_f);
img4_abs=abs(img4_fs);
img16_abs=abs(img16_fs);
img64_abs=abs(img64_fs);
power4=img4_abs.^2;
power16=img16_abs.^2;
power64=img64_abs.^2;

figure;
colormap(gray(256));
imagesc(power4);
xlabel('x周波数');
ylabel('y周波数');
title('4本のパワースペクトル');
axis([110 150 60 200]);
figure;
colormap(gray(256));
imagesc(power16);
xlabel('x周波数');
ylabel('y周波数');
title('16本のパワースペクトル');
axis([110 150 60 200]);
figure;
colormap(gray(256));
imagesc(power64);
xlabel('x周波数');
ylabel('y周波数');
title('64本のパワースペクトル');
axis([110 150 60 200]);

figure;
colormap(gray(256));
imagesc(img4);
title('4本');
axis off;
figure;
colormap(gray(256));
imagesc(img16);
title('16本');
axis off;
figure;
colormap(gray(256));
imagesc(img64);
title('64本');
axis off;
clear all;
close all;

h=256; w=256;
img=zeros(h,w);
img1=img; img2=img;

img1(98:158,113:143)=1;
img2(158:213,173:203)=1;

img1_f=fft2(img1);
img2_f=fft2(img2);
img1_fs=fftshift(img1_f);
img2_fs=fftshift(img2_f);
img1_abs=abs(img2_fs);
img2_abs=abs(img2_fs);
power1=img1_abs.^2;
power2=img2_abs.^2;

figure;
colormap(gray(256));
imagesc(power1);
xlabel('x周波数');
ylabel('y周波数');
title('(0,0)');
figure;
colormap(gray(256));
imagesc(power2);
xlabel('x周波数');
ylabel('y周波数');
title('(60,60)');

figure;
colormap(gray(256));
imagesc(img1);
axis off;
title('(0,0)');
figure;
colormap(gray(256));
imagesc(img2);
axis off;
title('(60,60)');
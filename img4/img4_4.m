clear all;
close all;

img=imread('LENNA.bmp');
[h,w]=size(img);
filter1=ones(h,w);
filter2=ones(h,w);

x=w/2; y=h/2;
for k=1:h
    for l=1:w
        d=sqrt((y-k)^2 + (x-l)^2);
        if (d <= 50)
            filter2(k,l)=0;
        end
        if (d <= 100)
            filter1(k,l)=0;
        end
    end
end

img_f=fft2(img);
img_fs=fftshift(img_f);
img_fil1=filter1.*img_fs;
img_fil2=filter2.*img_fs;
img_ifs1=ifftshift(img_fil1);
img_ifs2=ifftshift(img_fil2);
img_if1=ifft2(img_ifs1);
img_if2=ifft2(img_ifs2);
result1=real(img_if1);
result2=real(img_if2);

figure;
colormap(gray(256));
imagesc(result1);
xlabel('x周波数');
ylabel('y周波数');
title('100画素消去');

figure;
colormap(gray(256));
imagesc(result2);
xlabel('x周波数');
ylabel('y周波数');
title('50画素消去');

img_fs_abs=abs(img_fs);
img_fil1_abs=abs(img_fil1);
img_fil2_abs=abs(img_fil2);
power1=log(1+img_fs_abs.^2);
power2=log(1+img_fil1_abs.^2);
power3=log(1+img_fil2_abs.^2);

figure;
colormap(gray(256));
imagesc(power1);
xlabel('x周波数');
ylabel('y周波数');
title('img\_power');
figure;
colormap(gray(256));
imagesc(power2);
xlabel('x周波数');
ylabel('y周波数');
title('filterd1\_power');
figure;
colormap(gray(256));
imagesc(power3);
xlabel('x周波数');
ylabel('y周波数');
title('filterd2\_power');

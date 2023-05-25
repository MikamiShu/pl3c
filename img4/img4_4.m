clear all;
close all;

img=imread('LENNA.bmp');
[h,w]=size(img);
filter=ones(h,w);

x=w/2; y=h/2;
for k=1:h
    for l=1:w
        d=sqrt((y-k)^2 + (x-l)^2);
        if (d <= 100)
            filter(k,l)=0;
        end
    end
end

img_f=fft2(img);
img_fs=fftshift(img_f);
img_fil=filter.*img_fs;
img_ifs=ifftshift(img_fil);
img_if=ifft2(img_ifs);
result=real(img_if);

figure;
colormap(gray(256));
imagesc(result);
xlabel('x周波数');
ylabel('y周波数');

img_fs_abs=abs(img_fs);
img_fil_abs=abs(img_fil);
power1=log(1+img_fs_abs.^2);
power2=log(1+img_fil_abs.^2);
figure;
colormap(gray(256));
imagesc(power1);
xlabel('x周波数');
ylabel('y周波数');
figure;
colormap(gray(256));
imagesc(power2);
xlabel('x周波数');
ylabel('y周波数');


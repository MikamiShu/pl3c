clear all;
close all;

img=imread('kut.jpg');
red=img(:,:,1);
green=img(:,:,2);
blue=img(:,:,3);

z=zeros(size(img));
z(:,:,1)=blue;
z(:,:,2)=green;
z(:,:,3)=red;
z=uint8(z)

figure;
imshow(z);
title('赤と青チャンネル入れ替え');

figure;
imshow(red);
title('red');
figure;
imshow(green);
title('green');
figure;
imshow(blue);
title('blue');
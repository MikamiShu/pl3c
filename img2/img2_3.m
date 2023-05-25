clear all;
close all;

img=imread('kut.jpg');
gimg=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

%x方向
dx = [-1 0 1; -2 0 2; -1 0 1];
outimg1=filter2(dx,gimg);
outimg1=abs(outimg1);
outimg1=outimg1/2;
outimg1=uint8(outimg1);
figure;
imshow(outimg1);
title('x方向微分');

%y方向
dy = [-1 -2 -1; 0 0 0; 1 2 1];
outimg2=filter2(dy,gimg);
outimg2=abs(outimg2);
outimg2=outimg2/2;
outimg2=uint8(outimg2);
figure;
imshow(outimg2);
title('y方向微分');
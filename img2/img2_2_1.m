clear all;
close all;

img=imread('kut.jpg');
gimg=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

filter=ones(3)/9;

%ガウス雑音画像
rd=10.*randn(size(gimg));
rd=uint8(rd);
gimg1=gimg+rd;
judge=(gimg1>255);
gimg1(judge)=255;
judge=(gimg1<0);
gimg1(judge)=0;
img1=gimg1;
%インパルス雑音画像
inp=rand(size(gimg));
mat1=(inp<0.01);
mat2=(inp>0.99);
gimg(mat1)=0;
gimg(mat2)=255;
img2=gimg;

outimg1=filter2(filter,img1);
outimg2=filter2(filter,img2);
outimg1=uint8(outimg1);
outimg2=uint8(outimg2);

figure;
imshow(outimg1);
title('ガウス平滑');
figure;
imshow(outimg2);
title('インパルス平滑');


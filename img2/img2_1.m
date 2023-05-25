clear all;
close all;

img=imread('kut.jpg');
gimg=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

%白色ガウス
rd=10.*randn(size(gimg));
rd=uint8(rd);
gimg1=gimg+rd;
judge=(gimg1>255);
gimg1(judge)=255;
judge=(gimg1<0);
gimg1(judge)=0;

%インパルス
inp=rand(size(gimg));
mat1=(inp<0.01);
mat2=(inp>0.99);
gimg(mat1)=0;
gimg(mat2)=255;

figure;
imshow(gimg1);
title('白色ガウス雑音');
figure;
imshow(gimg);
title('インパルス雑音');




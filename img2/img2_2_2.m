clear all;
close all;

img=imread('kut.jpg');
gimg=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

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

%0パディング
[height,width]=size(img1);
out1=zeros(height+2,width+2);
out2=out1;
out1(2:height+1,2:width+1)=img1;
out2(2:height+1,2:width+1)=img2;

outimg1=img1;
outimg2=img2;
for k=2:height+1;
    for l=2:width+1;
        outimg1(k-1,l-1)=median(out1(k-1:k+1,l-1:l+1),'all');
        outimg2(k-1,l-1)=median(out2(k-1:k+1,l-1:l+1),'all');
    end
end

figure;
imshow(outimg1);
title('ガウスメディアン');
figure;
imshow(outimg2);
title('インパルスメディアン');


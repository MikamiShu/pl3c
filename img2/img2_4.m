clear all;
close all;

img=imread('kut.jpg');
gimg=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

%閾値処理なし
filter=[1 1 1; 1 -8 1; 1 1 1];
outimg=filter2(filter,gimg);
outimg=abs(outimg);
outimg=outimg/8;
outimg=uint8(outimg);
figure;
imshow(outimg);
title('閾値処理なし');

%閾値処理あり
num=zeros(1,256);
for k=1:256;
    num(k)=sum(sum(outimg==k-1));
end
%ヒストグラムのプロット
x=[1:256];
figure;
plot(x,num);
xlabel('画素値');
ylabel('画素数');
title('ヒストグラム');
axis([0 255 0 55000]);
%閾値処理
outimg2=zeros(size(outimg));
test=outimg>30;
outimg2(test)=255;
figure;
imshow(outimg2);
title('閾値処理後');

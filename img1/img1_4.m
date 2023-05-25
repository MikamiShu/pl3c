clear all;
close all;

img=imread('kut.jpg');
gray=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

bin=gray>192;
bin=uint8(bin);
figure;
imshow(bin,[0 1]);
title('閾値192');

bin1=gray>128;
bin1=uint8(bin1);
figure;
imshow(bin1,[0 1]);
title('閾値128');

bin2=gray>64;
bin2=uint8(bin2);
figure;
imshow(bin2,[0 1]);
title('閾値64');

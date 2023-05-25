clear all;
close all;

img=imread('kut.jpg');
gray=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

shifted1=bitshift(gray, -4);
shifted2=bitshift(gray, -6);
shifted3=bitshift(gray, -7);

figure;
imshow(gray);
title('gray');
figure;
imshow(shifted1,[0 15]);
title('4bit');
figure;
imshow(shifted2,[0 3]);
title('2bit');
figure;
imshow(shifted3,[0 1]);
title('1bit');
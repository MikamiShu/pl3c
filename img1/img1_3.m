clear all;
close all;

img=imread('kut.jpg');
gray=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

shifted1=bitshift(gray, -4);
shifted2=bitshift(gray, -6);
shifted3=bitshift(gray, -7);

%gray
z=255-img;

%4bit
z1=15-shifted1;

%2bit
z2=3-shifted2;

%1bit
z3=1-shifted3;


figure;
imshow(z);
title('gray');
figure;
imshow(z1,[0 15]);
title('4bit');
figure;
imshow(z2,[0 3]);
title('2bit');
figure;
imshow(z3,[0 1]);
title('1bit');
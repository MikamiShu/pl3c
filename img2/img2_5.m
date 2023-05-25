clear all;
close all;

img=imread('te.jpg');
img2=rgb2hsv(img);

img2pass=img2;
h=img2pass(:,:,1); s=img2pass(:,:,2); v=img2pass(:,:,3);
imgOut=zeros(size(h));
[height,width]=size(h);
for k=1:height;
    for l=1:width;
        if(((h(k,l)>=0.813)||(h(k,l)<=0.079))&&((s(k,l)<=0.402)&&(s(k,l)>=0.070))&&((v(k,l)>=0.518)&&(v(k,l)<=0.985)))
            imgOut(k,l)=255;
        end
    end
end
imgOut=uint8(imgOut);
imgOut=imgOut*255;
imshow(imgOut);
figure;
imshow(img);
figure;
imshow(img2);
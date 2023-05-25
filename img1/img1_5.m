clear all;
close all;

img=imread('kut.jpg');
gray=0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

result=zeros(1,256);
for k=1:256;
    result(k)=sum(sum(gray==k-1));
end

x=[1:256];
figure;
plot(x,result);
xlabel('画素値');
ylabel('画素数');
title('ヒストグラム');
axis([0 255 0 7000]);
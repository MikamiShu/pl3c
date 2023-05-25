clear all;
close all;

c=0.5;
f1=0.05;
f2=0.03;
d1=-pi/3;
d2=pi/6;
L0=255/2;
h=300;
w=300;

L1=zeros(h,w);
L2=zeros(h,w);
for k=1:h;
    for l=1:w;
        L1(k,l)=L0*(1+c*sin(2*pi*f1*(l*sin(d1)+k*cos(d1))));
        L2(k,l)=L0*(1+c*sin(2*pi*f2*(l*sin(d2)+k*cos(d2))));
    end
end

figure;
colormap(gray(256));
image(L1);
title('left30,0.05cycle/pixel');
axis off;
axis image;
figure;
colormap(gray(256));
image(L2);
title('right60,0.03cycle/pixel');
axis off;
axis image;


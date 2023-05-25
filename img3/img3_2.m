clear all;
close all;

c=0.5;
f=0.03;
d1=-80*pi/180;
d2=80*pi/180;
d3=-pi/4;
d4=pi/4;
d5=pi/2;
L0=255*(7/10);
h=400;
w=400;
h2=100;

L1=zeros(h,w);
L2=zeros(h,w);
L3=zeros(h,w);
L4=zeros(h,w);
L5=zeros(h,w);
for k=1:h;
    for l=1:w;
        L1(k,l)=L0*(1+c*sin(2*pi*f*(l*sin(d1)+k*cos(d1))));
        L2(k,l)=L0*(1+c*sin(2*pi*f*(l*sin(d2)+k*cos(d2))));
        L3(k,l)=L0*(1+c*sin(2*pi*f*(l*sin(d3)+k*cos(d3))));
        L4(k,l)=L0*(1+c*sin(2*pi*f*(l*sin(d4)+k*cos(d4))));
        L5(k,l)=L0*(1+c*sin(2*pi*f*(l*sin(d5)+k*cos(d5))));
    end
end

[x,y]=meshgrid(-199:200,50:-1:-49);
Y=255*0.95;
cir=(x.^2+y.^2 >= 20.^2)*Y;
re=ones(100,400);
re=re.*Y;
re(40:60,150:250)=0;



A=[L1;re;L2];
B=[L3;re;L4];
C=[L5;cir;L5];
%f1=figure;
%f1.WindowState='maximized';
colormap(gray(256));
image(A);
axis off;
axis image;
figure;
%pause(60);
colormap(gray(256));
image(C);
axis off;
axis image;
figure;
%pause(15);
colormap(gray(256));
image(B);
axis off;
axis image;
figure;
%pause(60);
colormap(gray(256));
image(C);
axis off;
axis image;
%pause(15);
%close();
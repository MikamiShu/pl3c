clear all;

Fs=16000;
t=[0:Fs-1]/Fs;
len=length(t);
rng(0,'twister');

r=0.2;

y=r.*randn(len,1);

num=100;
[h,c]=hist(y,num);

figure;
plot(t,y);
title('白色ガウス雑音');

figure;
plot(c,h);
xlabel('振幅');
ylabel('頻度');
title('ヒストグラム');

sound(y,Fs);
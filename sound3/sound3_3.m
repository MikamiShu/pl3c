clear;

[y1,Fs1]=audioread('sound1.wav');
[y2,Fs2]=audioread('sound2.wav');

%y1,y2をモノラルに
y1=y1(:,1);
y2=y2(:,1);

%time
t1=[0:length(y1)-1]/Fs1;
t2=[0:length(y2)-1]/Fs2;

%fft
y1_f=fft(y1);
y2_f=fft(y2);

%fftshift
y1_fs=fftshift(y1_f);
y2_fs=fftshift(y2_f);

%abs
Y1=abs(y1_fs);
Y2=abs(y2_fs);

%データ長,周波数の設定
y1l=length(y1);
y2l=length(y2);
f1=[-Fs1/2:Fs1/y1l:Fs1/2-Fs1/y1l];
f2=[-Fs2/2:Fs2/y2l:Fs2/2-Fs2/y2l];

%plot'Y1','Y2'
figure;
subplot(2,1,1);
plot(f1,Y1);
axis([0 5000 0 80]);
title('"a\_fftshift"');
subplot(2,1,2);
plot(f2,Y2);
axis([0 5000 0 80]);
title('"i\_fftshift"');

%最大値抽出
y1_mx=[1092 54 819 682 956 2868 3555 136 1219 3680];
y1_my=[77 51 50 42 36 35 30 25 25 21];
y2_mx=[306 2906 2447 153 2884 2442 2980 2436 302 2419];
y2_my=[52 52 44 41 34 34 41 33 38 31];

%合成
y_a=0; y_i=0;
for k=1:10;
    y_a=y_a+y1_my(k)*sin(2*pi*y1_mx(k)*t1);
    y_i=y_i+y2_my(k)*sin(2*pi*y2_mx(k)*t2);
end

%plot'y_a','y_i'
figure;
subplot(2,1,1);
plot(t1,y1);
xlabel('time[s]');

title('aの元波形');
subplot(2,1,2);
plot(t1,y_a);
title('a\_抽出後合成');

figure;
subplot(2,1,1);
plot(t2,y2);
title('iの元波形');
subplot(2,1,2);
plot(t2,y_i);
title('i\_抽出後合成');


%sound
sound(y_a,Fs1);
pause(3);
sound(y_i,Fs2);





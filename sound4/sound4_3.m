clear;

Fs=16000;
f=440;
t=[0:Fs-1]/Fs;
y1=0;
y2=0;
y1_f=0;
y2_f=0;
for k=1:50;
    y1=y1 + 1/(2*k-1)*sin(2*pi*(2*k-1)*f*t);
    y2=y2+2/3*(-1)^(k-1)/k*sin(2*pi*k*f*t);
    if(k~=1);
        y1_f=y1_f+ 1/(2*k-1)*sin(2*pi*(2*k-1)*f*t);
        y2_f=y2_f+2/3*(-1)^(k-1)/k*sin(2*pi*k*f*t);
    end
end

figure;
plot(t,y1,t,y1_f);
axis([0 0.01 -2 2]);
legend('矩形波','基本周波数除去');
figure;
plot(t,y2,t,y2_f);
axis([0 0.01 -2 2]);
legend('ノコギリ波','基本周波数除去');

sound(y1,Fs);
pause(3);
sound(y1_f,Fs);
pause(3);
sound(y2,Fs);
pause(3);
sound(y2_f,Fs);
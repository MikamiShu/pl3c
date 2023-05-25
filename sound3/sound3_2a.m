clear all;

[y,Fs] = audioread('sound1.wav');%a

y=y(:,1);%yをモノラルに変換

N = length(y);%yのデータ数
t = [1:N]/Fs;%時間

z = zeros(size(y));

z=y.*(-1);

%プロット
figure;
subplot(2,1,1);
plot(t,y);
xlabel('time[s]');
ylabel('waveform');
title('「あ」の波形から1部抜粋');
axis([0 0.01 -0.04 0.04]);
subplot(2,1,2);
plot(t,z);
xlabel('time[s]');
ylabel('waveform');
title('上下逆転波形');
axis([0 0.01 -0.04 0.04]);

figure;
plot(t,y,t,z);
xlabel('time[s]');
ylabel('waveform');
title('比較');
axis([0 0.01 -0.04 0.04]);
legend('もとの波形','上下反転波形');

sound(y,Fs);
pause(3);
sound(z,Fs);
%やってることはkadai2_aを参照

clear;

[y,Fs] = audioread('sound2.wav');

y=y(:,1);

N = length(y);
t = [1:N]/Fs;

z = zeros(size(y));

z=y.*(-1);

figure;
subplot(2,1,1);
plot(t,y);
xlabel('time[s]');
ylabel('waveform');
title('「い」の波形から1部抜粋');
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
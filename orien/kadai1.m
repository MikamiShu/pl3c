Fs=16000;
f=440;
t=[0:2*(Fs-1)]/Fs;
phi1=pi/4;
nokogiri=sawtooth(2*pi*f*t);
nokogiri2=sawtooth(2*pi*f*t+phi1);
%sound(nokogiri2,Fs);
subplot(2,1,1);
plot(t,nokogiri);
axis([0 0.01 -1 1]);
subplot(2,1,2);
plot(t,nokogiri2);
axis([0 0.01 -1 1]);

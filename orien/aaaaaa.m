Fs=16000;
f=440;
t=[0:2*(Fs-1)]/Fs;
phi1=pi/4;

y=0;
for 1:N
    y=y+(phi1*sin(2*pi*f*t));
end

plot(t,y);
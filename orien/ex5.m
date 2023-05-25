clear;
Fs=44100;
f=440;
for k=0:Fs-1;
    x(k+1)=sin(2*pi*f*k/Fs);
end

clear;
Fs=44100;
f=440;
t=[0:Fs-1]/Fs;
y=sin(2*pi*f*t);

%演習6-1
clear;
Fs=44100;
f=440;
t=[0:Fs-1]'/Fs;
y=sin(2*pi*f*t);

sound(y,Fs);

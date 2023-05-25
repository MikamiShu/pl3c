clear;

Fs = 8192;
f1 = 300;
f2 = 310;
f3 = 800;
f4 = 1300;
t = [0:1/10*Fs-1]/Fs;

y1 = sin(2*pi*f1*t);
y2 = sin(2*pi*f2*t);
y3 = sin(2*pi*f3*t);
y4 = sin(2*pi*f4*t);
Y1=[y1 y2];
Y2=[y1 y3];
Y3=[y1 y4];
Y1_rep=repmat(Y1,1,10);
Y2_rep=repmat(Y2,1,10);
Y3_rep=repmat(Y3,1,10);



sound(Y1_rep,Fs);
pause(3);
sound(Y2_rep,Fs);
pause(3);
sound(Y3_rep,Fs);



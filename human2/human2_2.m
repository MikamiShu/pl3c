clear;
close all;

hoge = importdata('data1250372.txt', ',' ,1);
data = hoge.data;

practice = hoge.data(:,2) == 1;
error = hoge.data(:,7) > 0;
del = practice | error;
data(del,:) = [];

%目標刺激あり妨害刺激○
target = data(:,4) == 1;
type = data(:,5) == 2;
setsize = data(:,6) == 4;
ttsm1 = mean(data(target & setsize & type, 8));
target = data(:,4) == 1;
type = data(:,5) == 2;
setsize = data(:,6) == 8;
ttsm2 = mean(data(target & setsize & type, 8));
target = data(:,4) == 1;
type = data(:,5) == 2;
setsize = data(:,6) == 16;
ttsm3 = mean(data(target & setsize & type, 8));
%目標刺激あり妨害刺激○に線
target = data(:,4) == 1;
type = data(:,5) == 1;
setsize = data(:,6) == 4;
ttsm4 = mean(data(target & setsize & type, 8));
target = data(:,4) == 1;
type = data(:,5) == 1;
setsize = data(:,6) == 8;
ttsm5 = mean(data(target & setsize & type, 8));
target = data(:,4) == 1;
type = data(:,5) == 1;
setsize = data(:,6) == 16;
ttsm6 = mean(data(target & setsize & type, 8));
%目標刺激なし妨害刺激○
target = data(:,4) == 2;
type = data(:,5) == 2;
setsize = data(:,6) == 4;
ttsm7 = mean(data(target & setsize & type, 8));
target = data(:,4) == 2;
type = data(:,5) == 2;
setsize = data(:,6) == 8;
ttsm8 = mean(data(target & setsize & type, 8));
target = data(:,4) == 2;
type = data(:,5) == 2;
setsize = data(:,6) == 16;
ttsm9 = mean(data(target & setsize & type, 8));
%目標刺激なし妨害刺激○に線
target = data(:,4) == 2;
type = data(:,5) == 1;
setsize = data(:,6) == 4;
ttsm10 = mean(data(target & setsize & type, 8));
target = data(:,4) == 2;
type = data(:,5) == 1;
setsize = data(:,6) == 8;
ttsm11 = mean(data(target & setsize & type, 8));
target = data(:,4) == 2;
type = data(:,5) == 1;
setsize = data(:,6) == 16;
ttsm12 = mean(data(target & setsize & type, 8));

x=[4,8,16];
m1 = [ttsm1,ttsm2,ttsm3];
m2 = [ttsm4,ttsm5,ttsm6];
m3 = [ttsm7,ttsm8,ttsm9];
m4 = [ttsm10,ttsm11,ttsm12];
plot(x,m1,'-o',x,m2,'-o',x,m3,'-o',x,m4,'-o');
legend({'目標刺激あり妨害刺激○','目標刺激あり妨害刺激○に線','目標刺激なし妨害刺激○','目標刺激なし妨害刺激○に線'},'Location','northwest');
xlabel('setsize');
ylabel('responstime ave');
xticks([4 8 16]);
axis([1 19 600 1400]);


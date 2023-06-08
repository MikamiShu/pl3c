clear;
close all;

d=importdata('data.csv',',',3);
data =d.data;

data(:,1)=[];

[people, setnum]=size(data);
ave_data=mean(data);
var_data=var(data);
std_data=std(data);
err_data=std_data/sqrt(people);

setsize=[4,8,16];

hold on;
errorbar(setsize, ave_data(1:3), err_data(1:3));
errorbar(setsize, ave_data(4:6), err_data(4:6));
errorbar(setsize, ave_data(7:9), err_data(7:9));
errorbar(setsize, ave_data(10:12), err_data(10:12));
hold off;

axis([3 17 500 2200]);
xlabel('セットサイズ');
ylabel('探索時間[ms]');
legend({'目標刺激（円）あり','目標刺激（円）なし','目標刺激（円+棒）あり','目標刺激（円+棒）なし'},'Location','northwest');
l_dao=262; %将“l_dao”宏定义为低音“1”的频率262Hz
l_re =286; %将“l_re”宏定义为低音“2”的频率286Hz
l_mi =311; %将“l_mi”宏定义为低音“3”的频率311Hz
l_fa =349; %将“l_fa”宏定义为低音“4”的频率349Hz
l_sao= 392; %将“l_sao”宏定义为低音“5”的频率392Hz
l_la =440; %将“l_a”宏定义为低音“6”的频率440Hz
l_xi =494; %将“l_xi”宏定义为低音“7”的频率494Hz
%以下是C调中音的音频宏定义
dao= 523; %将“dao”宏定义为中音“1”的频率523Hz
re= 587; %将“re”宏定义为中音“2”的频率587Hz
mi= 659; %将“mi”宏定义为中音“3”的频率659Hz
fa= 698; %将“fa”宏定义为中音“4”的频率698Hz
sao= 784; %将“sao”宏定义为中音“5”的频率784Hz
la= 880; %将“la”宏定义为中音“6”的频率880Hz
xi= 987; %将“xi”宏定义为中音“7”的频率523H? ?? ?
%以下是C调高音的音频宏定义
h_dao= 1046; %将“h_dao”宏定义为高音“1”的频率1046Hz
h_re= 1174; %将“h_re”宏定义为高音“2”的频率1174Hz
h_mi= 1318; %将“h_mi”宏定义为高音“3”的频率1318Hz
h_fa= 1396; %将“h_fa”宏定义为高音“4”的频率1396Hz
h_sao= 1567; %将“h_sao”宏定义为高音“5”的频率1567Hz
h_la= 1760; %将“h_la”宏定义为高音“6”的频率1760Hz
h_xi= 1975; %将“h_xi”宏定义为高音“7”的频率1975Hz

%%
%{ 
%% 简谱
s=[re,mi,re,dao,l_la,dao,l_la,...
l_sao,l_mi,l_sao,l_la,dao,...
l_la,dao,sao,la,mi,sao,...
re,...
mi,re,mi,sao,mi,...
l_sao,l_mi,l_sao,l_la,dao,...
l_la,l_la,dao,l_la,l_sao,l_re,l_mi,...
l_sao,...
re,re,sao,la,sao,...
fa,mi,sao,mi,...
la,sao,mi,re,mi,l_la,dao,...
re,...
mi,re,mi,sao,mi,...
l_sao,l_mi,l_sao,l_la,dao,...
l_la,dao,re,l_la,dao,re,mi,...
re,...
l_la,dao,re,l_la,dao,re,mi,...
re];

%% 延时
delay=0.2*[4,1,1,4,1,1,2,...
 2,2,2,2,8,...
 4,2,3,1,2,2,...
 10,...
 4,2,2,4,4,...
 2,2,2,2,4,...
 2,2,2,2,2,2,2,...
 10,...
 4,4,4,2,2,...
 4,2,4,4,...
 4,2,2,2,2,2,2,...
 10,...
 4,2,2,4,4,...
 2,2,2,2,6,...
 4,2,2,4,1,1,4,...
 10,...
 4,2,2,4,1,1,4,...
 10];
%}
%% 简谱 <天空之城>
s=[la, xi,...
h_dao xi h_dao h_mi,...
xi mi,...
la, sao la, h_dao,...
sao re mi ,...
fa mi fa h_dao ,...
mi re mi h_dao,...
xi fa fa xi ,...
xi la, xi ,...
h_dao xi h_dao h_mi ,...
xi mi ,...
la, sao la, h_dao ,...
sao mi ,...
fa h_dao xi xi h_dao,...
h_re h_mi h_dao h_dao,...
h_dao xi la xi sao,...
la h_dao h_re,...
h_mi h_re h_mi h_sao ,...
h_re sao,...
h_dao xi h_dao h_mi,...
h_mi la xi,...
h_dao xi h_dao h_re,...
h_dao sao sao,...
h_fa h_mi h_re h_dao,...
h_mi h_mi,...
h_la h_sao,...
h_mi h_re h_dao,...
h_re h_dao h_re h_re h_sao,...
h_mi h_mi ,...
h_la h_sao,...
h_mi,h_re,h_dao,...
h_re,h_dao,h_re,h_re,xi,...
la];

delay=0.5*[0.5 0.5 ,...
 1.5 0.5 1 1 ,...
 3 1,...
 1.5 0.5 1 1,...
 3 0.5 0.5,...
 1.5 0.5 0.5 1.5,...
 1.5 0.5 0.5 1.5,...
 1.5 0.5 1 1,...
 3 0.5 0.5,...
 1.5 0.5 1 1,...
 3 1,...
 1 0.5 1 1,...
 3 1,...
 1 0.5 0.5 1 1,...
 1 0.5 0.5 2,...
 0.5 0.5 1 1 1,...
 3 0.5 0.5,...
 1.5 0.5 1 1,...
 3 1,...
 1.5 0.5 1 1,...
 3 0.5 0.5,...
 1.5 0.5 1 1,...
 1.5 0.5 2,...
 1 1 1 1,...
 3 1,...
 2 2 ,...
 0.5 0.5 3,...
 1 0.5 0.5 1 1,...
 3 1,...
 2 2,...
 0.5 0.5 3,...
 1 0.5 0.5 1 1,...
 4];
%% 设置采样精度
fs=44100;
%% 生成波形
wav=[];
for i=1:length(s) 
 tune_max=ceil(delay(i));
 for j=[1 2 4 6]
 eval(['tune',num2str(j),'=linspace(0,2*pi*s(i)*',num2str(j),'/2,fs);']);
 end
%? ?? ?tune=linspace(0,2*pi*s(i),fs);
%? ?? ?tune2=linspace(0,2*pi*s(i)*2,fs);
%? ?? ?tune3=linspace(0,2*pi*s(i)*3,fs);
 tune=[tune1;tune2;tune4;tune6];%;tune3;tune4;tune5;tune6;tune7;tune8;tune9;tune10;tune11;tune12];
 eq=[0.5 1 0.5 0.5];
 tune=eq*sin(tune);
 tune=repmat(tune,1,tune_max);
 tune=tune(1:round( (length(tune)*delay(i)/tune_max)) );
 %tune=tune.*exp(linspace(log(1),log(0.02),length(tune)));
 tune=tune.*sin(linspace(0,pi,length(tune)));
 wav=[wav tune];
end
wav=wav/max(wav)*0.1; %限幅 音量
sound(wav,fs);
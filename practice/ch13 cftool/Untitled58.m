l_dao=262;  %将“l_dao”宏定义为低音“1”的频率262Hz
l_re =286;  %将“l_re”宏定义为低音“2”的频率286Hz
l_mi =311;  %将“l_mi”宏定义为低音“3”的频率311Hz
l_fa =349;  %将“l_fa”宏定义为低音“4”的频率349Hz
l_sao= 392;  %将“l_sao”宏定义为低音“5”的频率392Hz
l_la =440;  %将“l_a”宏定义为低音“6”的频率440Hz
l_xi =494;  %将“l_xi”宏定义为低音“7”的频率494Hz
%以下是C调中音的音频宏定义
dao= 523;  %将“dao”宏定义为中音“1”的频率523Hz
re= 587;  %将“re”宏定义为中音“2”的频率587Hz
mi= 659;  %将“mi”宏定义为中音“3”的频率659Hz
fa= 698;  %将“fa”宏定义为中音“4”的频率698Hz
sao= 784;  %将“sao”宏定义为中音“5”的频率784Hz
la= 880;  %将“la”宏定义为中音“6”的频率880Hz
xi= 987;  %将“xi”宏定义为中音“7”的频率523H? ?? ?
%以下是C调高音的音频宏定义
h_dao= 1046;  %将“h_dao”宏定义为高音“1”的频率1046Hz
h_re= 1174;  %将“h_re”宏定义为高音“2”的频率1174Hz
h_mi= 1318;  %将“h_mi”宏定义为高音“3”的频率1318Hz
h_fa= 1396;  %将“h_fa”宏定义为高音“4”的频率1396Hz
h_sao= 1567;  %将“h_sao”宏定义为高音“5”的频率1567Hz
h_la= 1760;  %将“h_la”宏定义为高音“6”的频率1760Hz
h_xi= 1975;  %将“h_xi”宏定义为高音“7”的频率1975Hz
zero=0;
%% 简谱 <小龙人>
s=[mi fa sao la sao,...
dao re mi fa mi,...
l_la l_la dao l_xi l_la l_sao,...
dao zero l_sao,...
l_sao l_sao l_sao mi dao,... 
zero mi dao zero zero l_sao,... 
l_sao l_sao l_sao l_la l_sao,...
zero l_la l_sao zero zero,...
l_sao l_sao l_sao sao mi,... 
zero sao mi zero re dao,... 
re re zero l_la dao ,... 
re zero l_sao,... 
l_sao,...
l_sao l_sao l_sao mi dao,... 
zero mi dao zero zero l_sao,... 
l_sao l_sao l_sao l_la l_sao,...
zero l_la l_sao,zero zero...
l_sao l_sao l_sao sao mi,... 
zero sao mi zero re dao,... 
re re zero l_la l_xi,...
dao,...
mi fa sao sao sao la sao,...
sao la sao sao la sao,... 
dao re mi mi mi sao mi,... 
mi sao mi mi sao mi,...
mi fa sao sao sao la sao,...
sao la sao sao la sao,... 
dao re mi mi mi sao mi,... 
mi sao mi mi sao mi,...
l_la l_la l_xi dao la la,...
sao fa mi re,...
mi fa sao la sao zero,...
dao re mi sao mi zero,... 
l_la l_la dao l_xi l_la l_sao,...
dao];



delay=1/2*[3/4 1/4 1/2 1/2 2,...% s=[3 4 5 6 5,...
3/4 1/4 1/2 1/2 2,...% 1 2 3 4 3,...
1/2 1 1/2 1 1/2 1/2,...% -6 -6 1 -7 -6 -5,...
3 1/2 1/2,...% 1 0 -5,...
1 1 1 1/2 1/2,...% -5 -5 -5 3 1,... 
1 1/2 1/2 1 1/2 1/2,...% 0 3 1 0 0 -5,... 
1 1 1 1/2 1/2,...% -5 -5 -5 -6 -5,...
1 1/2 1/2 1 1,...% 0 -6 -5 0 0 ,...
1 1 1 1/2 1/2,...% -5 -5 -5 5 3,... 
1 1/2 1/2 1 1/2 1/2,...% 0 5 3 0 2 1,... 
1 1 1/2 1 1/2,...% 2 2 0 -6 1 ,... 
3 1/2 1/2,...% 2 0 -5,... 
1/2,...%??-5,...
1 1 1 1/2 1/2,...% -5 -5 -5 3 1,... 
1 1/2 1/2 1 1/2 1/2,...% 0 3 1 0 0 -5,... 
1 1 1 1/2 1/2,...% -5 -5 -5 -6 -5,...
1 1/2 1/2 1 1,...% 0 -6 -5 0 0 ,...
1 1 1 1/2 1/2,...% -5 -5 -5 5 3,... 
1 1/2 1/2 1 1/2 1/2,...% 0 5 3 0 2 1,...? ?? ?? ?
1 1 1/2 1 1/2,...% 2 2 0 -6 -7,...
4,...% 1,...
3/4 1/4 1/2 1/2 1/2 1/2 1,...% 3 4 5 5 5 6 5,...
1/2 1/2 1 1/2 1/2 1,...% 5 6 5 5 6 5,... 
3/4 1/4 1/2 1/2 1/2 1/2 1,...% 1 2 3 3 3 5 3,... 
1/2 1/2 1 1/2 1/2 1,...% 3 5 3 3 5 3,...
3/4 1/4 1/2 1/2 1/2 1/2 1,...% 3 4 5 5 5 6 5,...
1/2 1/2 1 1/2 1/2 1,...% 5 6 5 5 6 5,... 
3/4 1/4 1/2 1/2 1/2 1/2 1,...% 1 2 3 3 3 5 3,... 
1/2 1/2 1 1/2 1/2 1,...% 3 5 3 3 5 3,...
1/2 1 1/2 1 1/2 1/2,...% -6 -6 -7 1 6 6,...
1 1/2 1/2 2,...% 5 4 3 2,...
3/4 1/4 1/2 1/2 1 1,...% 3 4 5 6 5 0 ,...
3/4 1/4 1/2 1/2 1 1,...% 1 2 3 5 3 0,... 
1/2 1 1/2 1 1/2 1/2,...% -6 -6 1 -7 -6 -5,...
4];% 1];
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
  eq=[0 0.5 0.5 1];
  tune=eq*sin(tune);
  tune=repmat(tune,1,tune_max);
  tune=tune(1:round( (length(tune)*delay(i)/tune_max)) );
  %tune=tune.*exp(linspace(log(1),log(0.02),length(tune)));
  tune=tune.*sin(linspace(0,pi,length(tune)));
  wav=[wav tune];
end
wav=wav/max(wav)*0.1; %限幅 音量
sound(wav,fs);

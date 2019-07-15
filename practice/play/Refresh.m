

%------------    建立.m文件，并命名为Refresh.m  --------
%------------    Refresh.m    开始    ------------------



% 刷新四个自控分析图形
% 作者：石坚1604089002
% 日期：2016-12-17


function Refresh()

%声明全局变量
global  RValue           %电阻的阻值
global  LValue           %电感的阻值
global  CValue           %电容的阻值
global  den              %传递函数的分子
global  num              %传递函数的分母
global  G                %传递函数


num=1.0/(LValue*CValue); %传递函数的分子
den=[1,1.0/(RValue*CValue),1.0/(LValue*CValue)];%传递函数的分母
G=tf(num,den);           %传递函数表达式


subplot(2,3,1);           %图形窗口分割为2行3列个子窗口，选中第1个
bode(G);grid;             %画波特图，加网格

subplot(2,3,2);           %图形窗口分割为2行3列个子窗口，选中第2个
pzmap(num,den);           %画零极点
rlocus(num,den);          %画根轨迹

subplot(2,3,4);           %图形窗口分割为2行3列个子窗口，选中第4个
step(G);grid;             %画阶跃响应

subplot(2,3,5);           %图形窗口分割为2行3列个子窗口，选中第5个
nyquist(G);               %画奈奎施特曲线
%作者:15040080187韩文强
figure1 = figure('Color',[0.2 0.4 0]);%定义函数

axis([-1,15,-1,15]);%绘制二维图形

hold on;%保持当前图形及轴系所有的特性

axis('off');%覆盖坐标刻度，并填充背景

txt=text(-1,9,'今天换了一部新手机Android 1000','fontsize',20,'fontname','楷体','color','k');%自言自语

pause(2);

set(gcf,'doublebuffer','on');%消除抖动

delete(txt);%删除自言自语

txt=text(2,9,'赶快开机试试！','fontsize',25,'fontname','楷体','color','k');%自言自语

pause(2);

delete(txt);%删除自言自语

rectangle('position',[1,0,6,15],'curvature',[0.2,0.2],'edgecolor','k','facecolor',[0 0 0]);%手机轮廓

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.7 0.7 0.7]);%手机屏幕

rectangle('position',[3,0.3,2,1.2],'curvature',[0.2,0.2],'edgecolor','k','facecolor',[0.5 0.7 0.7]);%手机home键

rectangle('position',[3.1,0.4,1.8,1],'curvature',[0.2,0.2],'edgecolor','k','facecolor','w');%手机home键

hlm1=line([5.8 6.2],[1.2 0.9],'color','b','linewidth',1);%手机倒退键

hlm2=line([5.8 6.2],[0.6 0.9],'color','b','linewidth',1);%手机倒退键

hlm3=line([1.8 2.2],[0.9 0.6],'color','b','linewidth',1);%手机前进键

hlm4=line([1.8 2.2],[0.9 1.2],'color','b','linewidth',1);%手机前进键

rectangle('position',[2.05,14.25,0.30,0.30],'curvature',[1,1],'edgecolor','w','facecolor','w');%手机前置摄像头

rectangle('position',[2.13,14.33,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机前置摄像头

txt=text(2.65,14.5,'LUCAS','fontsize',10,'fontname','楷体','color','w');%手机品牌名称

rectangle('position',[4.25,14.35,1.5,0.25],'curvature',[0,0],'edgecolor','w','facecolor','w');%手机前置摄像头

x1=[4.25,5.75];

y1=[14.455,14.455];

plot(x1,y1);

hold on;

rectangle('position',[7,11,0.05,2],'curvature',[1,1],'edgecolor','w','facecolor','w');%手机音量键

rectangle('position',[7,10,0.05,0.5],'curvature',[1,1],'edgecolor','w','facecolor','w');%手机开关机键

pause(4);

hold on; 

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.1 0.5 0.5]);%手机屏幕

rectangle('position',[2.13,14.33,0.15,0.15],'curvature',[1,1],'edgecolor','b','facecolor','b');%手机前置摄像头变成蓝色

txt1=text(7.5,9.5,'开机啦!!!!!!','fontsize',20,'fontname','楷体','color','r');%开机旁白

txt2=text(2.90,7.5,'L','fontsize',20,'fontname','楷体','color','k');%开机动画

h1=line(3.00,8.5,'color','k','marker','^','markersize',5);

h19=line(3.00,8.5,0,'color','k','marker','v','markersize',5);

pause(1);

txt3=text(3.45,7.5,'U','fontsize',20,'fontname','楷体','color','r');%开机动画

h2=line(3.65,9.25,0,'color','r','marker','^','markersize',5);

h21=line(3.65,9.25,0,'color','r','marker','v','markersize',5');

pause(0.9);

txt4=text(4.00,7.5,'C','fontsize',20,'fontname','楷体','color','g');%开机动画

h3=line(4.15,9.5,0,'color','g','marker','^','markersize',5);

h10=line(4.15,9.5,0,'color','g','marker','v','markersize',5);


pause(0.7);

txt5=text(4.45,7.5,'A','fontsize',20,'fontname','楷体','color','w');%开机动画

h4=line(4.65,9.25,'color','w','marker','^','markersize',5);

h12=line(4.65,9.25,0,'color','w','marker','v','markersize',5);

pause(0.5);

txt6=text(4.95,7.5,'S','fontsize',20,'fontname','楷体','color',[0.7 0.7 0.4]);%开机动画

h5=line(5.15,8.5,'color',[0.7 0.7 0.4],'marker','^','markersize',5);

h11=line(5.15,8.5,0,'color',[0.7 0.7 0.4],'marker','v','markersize',5);

pause(2);

txt7=text(2.90,7.5,'LUCAS','fontsize',20,'fontname','楷体','color','k');%开机动画

pause(2);

delete(txt1);

hlm5=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%手机倒退键

hlm6=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%手机倒退键

hlm7=line([1.8 2.2],[0.9 0.6],'color','r','linewidth',1);%手机前进键

hlm8=line([1.8 2.2],[0.9 1.2],'color','r','linewidth',1);%手机前进键

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.5 0.5 0.6])%手机屏幕

rectangle('position',[1.45,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','g');%手机软件

txt13=text(1.55,11.25,'微信','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%手机软件

txt14=text(3.45,11.25,'QQ','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[5.05,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%手机软件

txt15=text(5.15,11.25,'贴吧','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.45,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','w');%手机软件

txt19=text(1.55,8.75,'TIM','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%手机软件

txt17=text(3.45,8.75,'百词斩','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[5.05,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%手机软件

txt18=text(5.15,8.75,'咸鱼','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.45,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','r');%手机软件

txt20=text(1.45,6.25,'网易云音乐','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor',[0.5 0.5 0.7]);%手机软件

txt16=text(3.35,6.25,'知乎','fontsize',8,'fontname','楷体','color','k');%手机运营商

txt8=text(2.35,13.55,'中国移动','fontsize',7,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.25,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k')%手机信号

rectangle('position',[1.45,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机信号

rectangle('position',[1.65,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机信号

rectangle('position',[1.85,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%手机信号

rectangle('position',[2.05,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%手机信号

txt50=text(3.80,13.55,'12:25','fontsize',7,'fontname','楷体','color','w');%时间

rectangle('position',[6.0,13.35,0.6,0.25],'curvature',[0,0],'edgecolor','k','facecolor','k');%手机电量

rectangle('position',[6.0,13.35,0.4,0.25],'curvature',[0,0],'edgecolor','k','facecolor','g');%手机电量

rectangle('position',[6.6,13.43,0.07,0.1],'curvature',[0,0],'edgecolor','k','facecolor','k');%手机电量

txt51=text(5.3,13.55,'12%','fontsize',7,'fontname','楷体','color','w');%手机电量数字显示

h20=line(5.0,13.45,0,'color','red','marker','^','markersize',5);%手机标志

h24=line(5.0,13.45,0,'color','red','marker','v','markersize',5);%手机标志

pause(1);

a=line([3.45 3.65],[3.75 4.75],'color','r','linewidth',1);%箭头

b=line([3.65 4.38],[4.75 4.25],'color','r','linewidth',1);%箭头

c=line([3.65 4.35],[4.75 2.5],'color','r','linewidth',1);%箭头

txt100=text(7.5,9.5,'现在我要打开网易云啦!!!!!!','fontsize',15,'fontname','楷体','color','r');%移动旁箭头白

pause(2);%停顿0.5秒

delete(txt100);

x1=3.45;x2=3.65;x3=4.38;x4=4.35;

y1=3.75;y2=4.75;y3=4.25;y4=2.50;

t=0;dt=0.01;v=0.05;
%设置循环使鼠标移动

while x2>1.9;y2<10.5;
    t=t-dt;

    x1=x1+v*t;
    
    y1=y1-v*t;

    x2=x2+v*t;
    
    y2=y2-v*t;

    x3=x3+v*t;
    
    y3=y3-v*t;

    x4=x4+v*t;
    
    y4=y4-v*t;
  
    set(a,'xdata',[x1,x2]);

    set(b,'xdata',[x2,x3]);

    set(c,'xdata',[x2,x4]);

    set(a,'ydata',[y1,y2]);

    set(b,'ydata',[y2,y3]);

    set(c,'ydata',[y2,y4]);

    set(gcf,'doublebuffer','on');%消除振动
end

pause(2);

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor','r');%网易云界面

txt28=text(2,9,'音乐的力量','fontsize',15,'fontname','楷体','color','w');%网易云

txt25=text(7.5,9.5,'这是网易云','fontsize',15,'fontname','楷体','color','w');%结束语

pause(3);

delete(txt25);

txt26=text(7.5,9.5,'退出网易云','fontsize',15,'fontname','楷体','color','w');%退出网易云

pause(2);

hlm120=line([5.8 6.2],[1.2 0.9],'color','b','linewidth',1);%手机倒退键

hlm33=line([5.8 6.2],[0.6 0.9],'color','b','linewidth',1);%手机倒退键%退出网易云

pause(2);

delete(txt26);

hlm34=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%手机倒退键

hlm35=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%手机倒退键%退出网易云

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.5 0.5 0.6])%手机屏幕

rectangle('position',[1.45,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','g');%手机软件

txt79=text(1.55,11.25,'微信','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%手机软件

txt80=text(3.45,11.25,'QQ','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[5.05,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%手机软件

txt69=text(5.15,11.25,'贴吧','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.45,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','w');%手机软件

txt68=text(1.55,8.75,'TIM','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%手机软件

txt67=text(3.45,8.75,'百词斩','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[5.05,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%手机软件

txt66=text(5.15,8.75,'咸鱼','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.45,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','r');%手机软件

txt65=text(1.45,6.25,'网易云音乐','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor',[0.5 0.5 0.7]);%手机软件

txt63=text(3.35,6.25,'知乎','fontsize',8,'fontname','楷体','color','k');%手机运营商

txt62=text(2.35,13.55,'中国移动','fontsize',7,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.25,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k')%手机信号

rectangle('position',[1.45,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机信号

rectangle('position',[1.65,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机信号

rectangle('position',[1.85,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%手机信号

rectangle('position',[2.05,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%手机信号

txt61=text(3.80,13.55,'12:25','fontsize',7,'fontname','楷体','color','w');%时间

rectangle('position',[6.0,13.35,0.6,0.25],'curvature',[0,0],'edgecolor','k','facecolor','k');%手机电量

rectangle('position',[6.0,13.35,0.4,0.25],'curvature',[0,0],'edgecolor','k','facecolor','g');%手机电量

rectangle('position',[6.6,13.43,0.07,0.1],'curvature',[0,0],'edgecolor','k','facecolor','k');%手机电量

txt60=text(5.3,13.55,'12%','fontsize',7,'fontname','楷体','color','w');%手机电量数字显示

h9=line(5.0,13.45,0,'color','red','marker','^','markersize',5);%手机标志

h8=line(5.0,13.45,0,'color','red','marker','v','markersize',5);%手机标志

pause(1);

a=line([3.45 3.65],[3.75 4.75],'color','r','linewidth',1);%箭头

b=line([3.65 4.38],[4.75 4.25],'color','r','linewidth',1);%箭头

c=line([3.65 4.35],[4.75 2.5],'color','r','linewidth',1);%箭头

txt1=text(7.5,9.5,'现在我要打开TIM啦!!!!!!','fontsize',15,'fontname','楷体','color','r');%旁白

pause(3);%停顿2秒

delete(txt1);

x1=3.45;x2=3.65;x3=4.38;x4=4.35;

y1=3.75;y2=4.75;y3=4.25;y4=2.50;

t=0;dt=0.01;v=0.05;
%设置循环使鼠标移动

while x2>1.9;y2=10;y1=8.5;y4=9;
    t=t-dt;

    x1=x1+v*t;
    
    y1=y1-v*t;

    x2=x2+v*t;
    
    y2=y2-v*t;

    x3=x3+v*t;
    
    y3=y3-v*t;

    x4=x4+v*t;
    
    y4=y4-v*t;
  
    set(a,'xdata',[x1,x2]);

    set(b,'xdata',[x2,x3]);

    set(c,'xdata',[x2,x4]);

    set(a,'ydata',[y1,y2]);

    set(b,'ydata',[y2,y3]);

    set(c,'ydata',[y2,y4]);

    set(gcf,'doublebuffer','on');%消除振动
end

pause(2);

hlm30=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%手机倒退键

hlm31=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%手机倒退键%退出网易云

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor','b');%tim界面

txt24=text(2,9,'    TIM','fontsize',15,'fontname','楷体','color','w');%TIM

txt25=text(7.5,9.5,'这是TIM','fontsize',15,'fontname','楷体','color','w');%TIM

pause(3);

delete(txt25);

txt26=text(7.5,9.5,'退出TIM','fontsize',15,'fontname','楷体','color','w');%班级姓名

pause(2);

hlm28=line([5.8 6.2],[1.2 0.9],'color','b','linewidth',1);%手机倒退键

hlm29=line([5.8 6.2],[0.6 0.9],'color','b','linewidth',1);%手机倒退键%退出TIM

pause(2);

delete(txt26);

hlm32=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%手机倒退键

hlm39=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%手机倒退键%退出网易云

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.5 0.5 0.6])%手机屏幕

rectangle('position',[1.45,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','g');%手机软件

txt30=text(1.55,11.25,'微信','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%手机软件

txt31=text(3.45,11.25,'QQ','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[5.05,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%手机软件

txt32=text(5.15,11.25,'贴吧','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.45,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','w');%手机软件

txt33=text(1.55,8.75,'TIM','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%手机软件

txt34=text(3.45,8.75,'百词斩','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[5.05,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%手机软件

txt35=text(5.15,8.75,'咸鱼','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.45,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','r');%手机软件

txt36=text(1.45,6.25,'网易云音乐','fontsize',8,'fontname','楷体','color','k');%手机运营商

rectangle('position',[3.15,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor',[0.5 0.5 0.7]);%手机软件

txt37=text(3.35,6.25,'知乎','fontsize',8,'fontname','楷体','color','k');%手机运营商

txt38=text(2.35,13.55,'中国移动','fontsize',7,'fontname','楷体','color','k');%手机运营商

rectangle('position',[1.25,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k')%手机信号

rectangle('position',[1.45,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机信号

rectangle('position',[1.65,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%手机信号

rectangle('position',[1.85,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%手机信号

rectangle('position',[2.05,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%手机信号

txt9=text(3.80,13.55,'12:25','fontsize',7,'fontname','楷体','color','w');%时间

rectangle('position',[6.0,13.35,0.6,0.25],'curvature',[0,0],'edgecolor','k','facecolor','k');%手机电量

rectangle('position',[6.0,13.35,0.4,0.25],'curvature',[0,0],'edgecolor','k','facecolor','g');%手机电量

rectangle('position',[6.6,13.43,0.07,0.1],'curvature',[0,0],'edgecolor','k','facecolor','k');%手机电量

txt11=text(5.3,13.55,'12%','fontsize',7,'fontname','楷体','color','w');%手机电量数字显示

h6=line(5.0,13.45,0,'color','red','marker','^','markersize',5);%手机标志

h7=line(5.0,13.45,0,'color','red','marker','v','markersize',5);%手机标志

pause(3);%停顿3S

txt70=text(7.5,9.5,'谢谢观看','fontsize',15,'fontname','楷体','color','w');%结束语'谢谢观看'

pause(3);%停顿3S

delete(txt70);%删除70

txt71=text(7.5,9.5,'电气工程1504班','fontsize',15,'fontname','楷体','color','w');%班级姓名

txt72=text(7.5,8.5,'1504080187','fontsize',15,'fontname','楷体','color','w');%学号
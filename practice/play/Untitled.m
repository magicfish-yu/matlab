figure('name','搜索演示','Color','w');%定义题目
axis([-400,400,-400,400]);%定义坐标范围
set(gcf,'DoubleBuffer','on');%消除抖动
axis ('off');%使坐标轴消失

text(-100,360,'S','fontsize',40,'color','b');%显示字母s
pause(0.4)%延时
text(-40,360,'o','fontsize',40,'color','r');%显示字母o
pause(0.4)%延时
text(0,360,'G','fontsize',40,'color','y');%显示字母G
pause(0.4)%延时
text(40,360,'o','fontsize',40,'color','b');%显示字母o
pause(0.4)%延时
text(80,360,'u','fontsize',40,'color','g');%显示字母u
pause(0.4)%延时

%以下四句为画输入搜索框的轮廓
a1=line([-100,100],[160,160],'color','k','linewidth',1);%下横线
a2=line([100,100],[160,180],'color','k','linewidth',1);%右竖线
a3=line([-100,100],[180,180],'color','k','linewidth',1);%上横线
a4=line([-100,-100],[160,180],'color','k','linewidth',1);%左竖线

%以下为使输入搜索框逐渐变大，四条线均移动
dt=0.08;%单位变化量
t1=-100;%线段端点的初始坐标
t2=100;
t3=160;
t4=170;
while t4<220 %确定范围
    t1=t1-dt;
    t2=t2+dt;
    t3=t3;
    t4=t4+dt;

    set(a1,'xdata',[t1 t2],'ydata',[t3 t3]);
    set(a2,'xdata',[t2 t2],'ydata',[t3 t4]);
    set(a3,'xdata',[t1 t2],'ydata',[t4 t4]);
    set(a4,'xdata',[t1 t1],'ydata',[t3 t4]);

    pause(0.001);%停顿0.001秒
    drawnow;
end
hold on;%保持坐标轴及图形不变化

%以下为显示两个按钮
fill([-70 -70 -5 -5],[100 140 140 100],'c');%填充矩形块，青色
fill([5 5 70 70],[100 140 140 100],'c');
pause(0.1);
text(-69,120,'搜狗一下','fontsize',10,'color','k');%显示文字
text(7,120,'其他','fontsize',10,'color','k');

%以下三句为画鼠标箭头，呈I形，黑色
a5=line([250 260],[320 320],'color','k','linewidth',1);
a6=line([250 260],[300 300],'color','k','linewidth',1);
a7=line([255 255],[300 320],'color','k','linewidth',1);

%以下为实现鼠标的移动
dt1=0.5;%横向位移量
dt2=0.6;%纵向位移量
t5=250;%各线段坐标的初值
t6=260;
t7=300;
t8=320;
t9=255;

while t9>150%使鼠标向左下方移动，至搜索框的右侧
    t5=t5-dt1;
    t6=t6-dt1;
    t7=t7-dt2;
    t8=t8-dt2;
    t9=t9-dt1;

    set(a5,'xdata',[t5 t6],'ydata',[t8 t8]);
    set(a6,'xdata',[t9 t9],'ydata',[t7 t8]);
    set(a7,'xdata',[t5 t6],'ydata',[t7 t7]);

    pause(0.001);%停顿0.001秒
    drawnow;
end
%当鼠标移到时，利用使其变白的方法，使鼠标消失
a5=line([145 155],[194 194],'color','w','linewidth',1);
a7=line([145 155],[174 174],'color','w','linewidth',1);
%以下一句容易忽略，应为它会对搜索框的线段有影响
a2=line([150 150],[160,220],'color','k','linewidth',1);%消除白点

%以下为实现光标的闪烁,利用颜色的变化
i=8;%闪烁次数为4次
flag=1;%标志变量
while i>0
 if flag==1 %若flag为1，使光标亮，同时标志清0
 a8=line([-140 -140],[170 210],'color','b','linewidth',1);
 flag=0;
 else     %若flag为0，光标不亮，同时标志置1
 a8=line([-140 -140],[170 210],'color','w','linewidth',1);
 flag=1;
 end
 i=i-1;
 pause(0.5);
end

%以下为显示所输入的内容，即''武汉轻工大学''
text(-145,185,'武','fontsize',15,'color','k');
pause(0.5);
text(-130,185,'汉','fontsize',15,'color','k');
pause(0.5);
text(-115,185,'轻','fontsize',15,'color','k');
pause(0.5);
text(-100,185,'工','fontsize',15,'color','k');
pause(0.5);
text(-85,185,'大','fontsize',15,'color','k');
pause(0.5);
text(-70,185,'学','fontsize',15,'color','k');
pause(2);

%以下两句为模拟按下回车键，使搜狗一下按钮变绿色
fill([-70 -70 -5 -5],[100 140 140 100],'g');
text(-69,120,'搜狗一下','fontsize',10,'color','r');

pause(1.5);
clf %清屏幕，载入新的页面
axis([-400,400,-400,400]);%重新定义坐标系
hold on;
set(gcf,'DoubleBuffer','on');
axis ('off');

%以下为加载等待的画面
%以下四句为画进度框的轮廓
a8=line([-100 -100],[-300 -250],'color','k','linewidth',1);%
a9=line([-100 100],[-250 -250],'color','k','linewidth',1);
a10=line([100 100],[-300 -250],'color','k','linewidth',1);
a11=line([-100 100],[-300 -300],'color','k','linewidth',1);

%以下为显示动态的进度情况
dt3=0.2;%单位变化量
f=-100;%设置球和进度条的初始位置
i=1;%单位速度量
text(-240,-280,'搜索进度','fontsize',10,'color','k');%显示文字
ball=line(-100,0,'color','r','marker','.','markersize',150);%画球

while f<100
 f=f+i*dt3;
 if f>100
 f=100;
 end
 set(ball,'xdata',f,'ydata',50);%使球跟随进度向右运动
 a12=line([-100 f],[0 0],'color','k','linewidth',1);%下划线随球而动
 i=i*1.2;%变速，速度逐渐加快
 fill([-100 -100 f f],[-298 -252 -252 -298],'c');%进度条向右
 pause(0.5);
end
pause(1);

clf %清屏幕，载入新的一页
axis([-400,400,-400,400]);%重新定义坐标系，但保持不变化
hold on;
set(gcf,'DoubleBuffer','on');
axis ('off');

%以下为显示快捷搜索操作区，位于左侧
text(-350,350,'搜狗','fontsize',50,'color','k');%服务商商标
text(-300,210,'图片','fontsize',10,'color','k');
text(-300,140,'视频','fontsize',10,'color','k');
text(-300,70,'新闻','fontsize',10,'color','k');

%以下为显示搜索的内容，位于右侧
text(-150,260,'武汉轻工大学','fontsize',15,'color','k');
text(-150,220,'获得421,000条结果','fontsize',8,'color','k');
text(-150,160,'学校原名粮食部武汉粮食工业学校，1998年实行中央与湖北省共建、以湖北省管理为主。。','fontsize',10,'color','k');
text(-120,120,'本专科招生    图书馆','fontsize',10,'color','k');
text(-120,90,'人才引进     教务管理','fontsize',10,'color','k');
text(-150,30,'for more  http://www.whpu.edu.com >>','fontsize',10,'color','r');%显示链接
text(-150,0,'网页快照','fontsize',9,'color','k');

%以下为显示部分动态信息，和搜索结果无关
fill([-320 -320 -305 -305],[200 220 220 200],'c');%画相机图标的主体，青色
fill([-312 -312 -307 -307],[220 225 225 220],'c');%画相机按钮
fill([-320 -320 -305 -305],[130 140 140 130],[0.5 0 0]);%画视频图标的红色底部
%以下三句为画视频图标上部分的轮廓
a13=line([-320 -320],[140 155],'color','k','linewidth',1);
a14=line([-320 -305],[155 155],'color','k','linewidth',1);
a15=line([-305 -305],[140 155],'color','k','linewidth',1);
%下面一句为确定移动线段的初始位置，表征为视频区
a16=line([-320 -315],[140 155],'color','k','linewidth',4);
%以下为设置该线段的移动情况，以及在相机主体区的圆
%随之而变化的情况
dt4=0.3;%线段单位位移量
dt5=0.15;%圆半径的单位增量
t11=-320;%线段一端的初始横坐标
t12=-315;%另一端
r=1;%圆半径初值
m=4;%循环4次
while m>0
 if  t12<-305  %若线段的左上端点未到达边框的右侧
 t11=t11+dt4;
 t12=t12+dt4;
 set(a16,'xdata',[t11 t12],'ydata',[140 155]);%则线段右移
 r=r+dt5;%圆半径递增
 a=0:0.1:2*pi;
 plot(-312+r*cos(a),210+r*sin(a));%在相机主体中画圆
 else   %若线段的左上端点到达边框的右侧
 t11=-320; %则使线段回到初始位置
 t12=-315;
 r=1;  %圆半径回初值
 m=m-1;
 fill([-320 -320 -305 -305],[200 220 220 200],'c');%覆盖圆，使其重复变化,而不被原来的所遮盖
 end
 pause(0.005);
end
plot(-312+5*cos(a),210+5*sin(a));%退出之后再次画圆，任取

%以下为显示个人信息，也就是我
text(300,-260,'电气工程1504  杨炎','fontsize',10,'color','k');
text(300,-300,'2017.11.26','fontsize',8,'color','k');
  
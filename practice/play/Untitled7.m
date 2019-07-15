%作者:1401070096
clear;%清屏
figure('name','倒车入库-电气工程及其自动化--田野（1401070096）','Position',[1 1 550 480]);%设置图像，并给其命名
axis([0,10,0,10]);%建立坐标系
 hold on;%保持坐标
axis off;% 关闭坐标
text(0.2,7, '        科目二考试' ,'fontsize',30,'color','b');pause(0.1);
text(0.1,5.5, '                 之倒车入库' ,'fontsize',25,'color','b');pause(2); %在屏幕中显示文字
clf;   %清屏幕，载入新的页面
clear;%清楚屏幕
axis([-100.0,100.0,-100.0,100.0]);%建立坐标系
hold on;%保持坐标
axis off;%关闭坐标轴
fill([-100,100,100,-100],[-100,-100,100,100],[0.5,0.5,0.5]);%画道路
fill([-100,100,100,-100],[70,70,100,100],[0,0.4,0]);%画上半部分的花坛
fill([-100,-35,-35,-100],[-100,-100,-15,-15],[0,0.4,0]);%画下左半花坛
fill([25,100,100,25],[-100,-100,-15,-15],[0,0.4,0]);%画下右半花坛
line([-30;20],[-90;-90],'color','y','linewidth',1);%
plot([-35;25],[-15;-15],'--y');%画其中的虚线
line([-30;-30],[-90;-15],'color','y','linewidth',1);
line([20;20],[-90;-15],'color','y','linewidth',1);%绘制禁戒线
h1=fill([-95,-35,-35,-95],[-5,-5,35,35],[1,0,0]);%绘制小车
h2=fill([-85,-75,-75,-85],[-5,-5,35,35],[0,0,0]);%绘制玻璃
h3=fill([-60,-50,-50,-60],[-5,-5,35,35],[0,0,0]);%绘制玻璃
d1=line(-35,35,'color','w','marker','.','markersize',25);%绘制左灯
d2=line(-35,-5,'color','w','marker','.','markersize',25);%绘制右灯
t1=0;dt=0.3;
while t1<120
    t1=t1+dt;
    x11=[-95+t1;-35+t1;-35+t1;-95+t1];%设置小车的X运动轨迹
    x12=[-85+t1;-75+t1;-75+t1;-85+t1];%设置玻璃的X运动轨迹
    x13=[-60+t1;-50+t1;-50+t1;-60+t1];%设置玻璃的X运动轨迹
    x14=-37+t1;%设置灯的X运动轨迹
    y11=[-5 -5 35 35];%设置小车的Y运动轨迹
    y12=[-5 -5 35 35];%设置玻璃的Y运动轨迹
    y13=[-5 -5 35 35];%设置玻璃的Y运动轨迹
    set(h1,'xdata',x11,'ydata',y11);%改变小车位置
    set(h2,'xdata',x12,'ydata',y12);%改变玻璃位置
    set(h3,'xdata',x13,'ydata',y13);%改变玻璃位置
    set(d1,'xdata',x14,'ydata',35);%%改变左灯位置
    set(d2,'xdata',x14,'ydata',-5);%改变右灯位置
    set(gcf,'doublebuffer','on');
    drawnow; %小车从开始位置，到倒正库前的位置
end 
pause(1);%停顿1s
w1=pi/2;dw=pi/900;%设置角度增量
text(-25,85,'倒正库','fontsize',25,'color','y');%显示‘倒正库’提示
while w1<pi-pi/180
    w1=w1+dw;
    x21=[25+10*cos(w1);25+10*cos(w1)+60*cos(w1-pi/2);25+10*cos(w1)+40*cos(w1)+60*cos(-pi/2+w1);25+10*cos(w1)+40*cos(w1)];%设置小车的X运动轨迹
    x22=[25+10*cos(w1)+10*cos(w1-pi/2);25+10*cos(w1)+20*cos(w1-pi/2);25+10*cos(w1)+40*cos(w1)+20*cos(w1-pi/2);25+10*cos(w1)+40*cos(w1)+10*cos(w1-pi/2)];%设置玻璃的X运动轨迹
    x23=[25+10*cos(w1)+35*cos(w1-pi/2);25+10*cos(w1)+45*cos(w1-pi/2);25+10*cos(w1)+40*cos(w1)+45*cos(w1-pi/2);25+10*cos(w1)+40*cos(w1)+35*cos(w1-pi/2)];%设置玻璃的X运动轨迹
    x241=25+10*cos(w1)+40*cos(w1)+60*cos(-pi/2+w1);%设置左灯的X运动轨迹
    x242=25+10*cos(w1)+60*cos(w1-pi/2);%设置右灯的X运动轨迹
    y21=[-15+10*sin(w1);-15+10*sin(w1)+60*sin(w1-pi/2);-15+10*sin(w1)+40*sin(w1)+60*sin(-pi/2+w1);-15+10*sin(w1)+40*sin(w1)];%设置小车的Y运动轨迹
    y22=[-15+10*sin(w1)+10*sin(w1-pi/2);-15+10*sin(w1)+20*sin(w1-pi/2);-15+10*sin(w1)+40*sin(w1)+20*sin(w1-pi/2);-15+10*sin(w1)+40*sin(w1)+10*sin(w1-pi/2)];%设置玻璃的Y运动轨迹
    y23=[-15+10*sin(w1)+35*sin(w1-pi/2);-15+10*sin(w1)+45*sin(w1-pi/2);-15+10*sin(w1)+40*sin(w1)+45*sin(-pi/2+w1);-15+10*sin(w1)+40*sin(w1)+35*sin(w1-pi/2)];%设置玻璃的Y运动轨迹
    y241=-15+10*sin(w1)+40*sin(w1)+60*sin(-pi/2+w1);%设置左灯的Y运动轨迹
    y242=-15+10*sin(w1)+60*sin(w1-pi/2);%设置右灯的Y运动轨迹
    set(h1,'xdata',x21,'ydata',y21); %改变小车位置
    set(h2,'xdata',x22,'ydata',y22); %改变玻璃位置
    set(h3,'xdata',x23,'ydata',y23); %改变玻璃位置
    set(d1,'xdata',x241,'ydata',y241); %改变左灯位置
    set(d2,'xdata',x242,'ydata',y242,'color','y'); %改变右灯位置，并使灯泡亮起
    set(gcf,'doublebuffer','on');
    drawnow;%实现小车的旋转，使小车能够正对车库
end
t2=0;
while t2<65
    t2=t2+dt;
    x31=[15;15;-25;-25];%设置小车、玻璃的X运动轨迹
    y31=[-15-t2;45-t2;45-t2;-15-t2];%设置小车的Y运动轨迹
    y32=[-5-t2;5-t2;5-t2;-5-t2];%设置玻璃的Y运动轨迹
    y33=[20-t2;30-t2;30-t2;20-t2];%设置玻璃的Y运动轨迹
    y34=45-t2;%设置灯的Y运动轨迹
    set(h1,'xdata',x31,'ydata',y31); %改变小车位置
    set(h2,'xdata',x31,'ydata',y32); %改变玻璃位置
    set(h3,'xdata',x31,'ydata',y33); %改变玻璃位置
    set(d1,'xdata',-25,'ydata',y34); %改变左灯位置
    set(d2,'xdata',15,'ydata',y34,'color','y'); %改变右灯位置，并使灯泡亮起
    set(gcf,'doublebuffer','on');
    drawnow;%实现小车能够倒入车库内
end
pause(2);%停顿2S
fill([-100,100,100,-100],[70,70,100,100],[0,0.4,0]);%重新绘制上半花坛，覆盖‘倒正库’文字
t3=0;
while t3<65
    t3=t3+dt;
    x41=[15;15;-25;-25];%设置小车、玻璃的X运动轨迹
    y41=[-80+t3;-20+t3;-20+t3;-80+t3];%设置小车的Y运动轨迹
    y42=[-70+t3;-60+t3;-60+t3;-70+t3];%设置玻璃的Y运动轨迹
    y43=[-45+t3;-35+t3;-35+t3;-45+t3];%设置玻璃的Y运动轨迹
    y44=-20+t3;%设置灯的Y运动轨迹
    set(h1,'xdata',x41,'ydata',y41); %改变小车位置
    set(h2,'xdata',x41,'ydata',y42); %改变玻璃位置
    set(h3,'xdata',x41,'ydata',y43); %改变玻璃位置
    set(d1,'xdata',-25,'ydata',y44,'color','y'); %改变左灯位置，并使灯泡亮起
    set(d2,'xdata',15,'ydata',y44,'color','w'); %改变右灯位置，并使灯泡熄灭
    set(gcf,'doublebuffer','on');%使小车驶出车库
    drawnow;
end
w2=0;
while w2<pi/2
    w2=w2+dw;
    x51=[50*cos(w2)-35;50*cos(w2)-35+60*cos(w2+pi/2);10*cos(w2)-35+60*cos(w2+pi/2);10*cos(w2)-35];%设置小车的X运动轨迹
    x52=[50*cos(w2)-35+10*cos(w2+pi/2);50*cos(w2)-35+20*cos(w2+pi/2);10*cos(w2)-35+20*cos(w2+pi/2);10*cos(w2)-35+10*cos(w2+pi/2)];%设置玻璃的X运动轨迹
    x53=[50*cos(w2)-35+35*cos(w2+pi/2);50*cos(w2)-35+45*cos(w2+pi/2);10*cos(w2)-35+45*cos(w2+pi/2);10*cos(w2)-35+35*cos(w2+pi/2)];%设置玻璃的X运动轨迹
    x541=10*cos(w2)-35+60*cos(w2+pi/2);%设置左灯的X运动轨迹
    x542=50*cos(w2)-35+60*cos(w2+pi/2);%设置右灯的X运动轨迹
    y51=[50*sin(w2)-15;50*sin(w2)-15+60*sin(w2+pi/2);10*sin(w2)-15+60*sin(w2+pi/2);10*sin(w2)-15];%设置小车的Y运动轨迹
    y52=[50*sin(w2)-15+10*sin(w2+pi/2);50*sin(w2)-15+20*sin(w2+pi/2);10*sin(w2)-15+20*sin(w2+pi/2);10*sin(w2)-15+10*sin(w2+pi/2)];%设置玻璃的Y运动轨迹
    y53=[50*sin(w2)-15+35*sin(w2+pi/2);50*sin(w2)-15+45*sin(w2+pi/2);10*sin(w2)-15+45*sin(w2+pi/2);10*sin(w2)-15+35*sin(w2+pi/2)];%设置玻璃的Y运动轨迹
    y541=10*sin(w2)-15+60*sin(w2+pi/2);%设置左灯的Y运动轨迹
    y542=50*sin(w2)-15+60*sin(w2+pi/2);%设置右灯的Y运动轨迹
    set(h1,'xdata',x51,'ydata',y51); %改变小车位置
    set(h2,'xdata',x52,'ydata',y52); %改变玻璃位置
    set(h3,'xdata',x53,'ydata',y53); %改变玻璃位置
    set(d1,'xdata',x541,'ydata',y541,'color','y'); %改变左灯位置，并使灯泡亮起
    set(d2,'xdata',x542,'ydata',y542); %改变右灯位置
    set(gcf,'doublebuffer','on');
    drawnow;%使小车向左旋转，能够到达倒反库的位置
end
pause(1);%停顿1S
w3=pi/2;
text(-25,85,'倒反库','fontsize',25,'color','y');%绘出‘倒反库’提示
while w3>0
    w3=w3-dw;
    x61=[50*cos(w3)-35;50*cos(w3)-35+60*cos(w3+pi/2);10*cos(w3)-35+60*cos(w3+pi/2);10*cos(w3)-35];%设置小车的X运动轨迹
    x62=[50*cos(w3)-35+10*cos(w3+pi/2);50*cos(w3)-35+20*cos(w3+pi/2);10*cos(w3)-35+20*cos(w3+pi/2);10*cos(w3)-35+10*cos(w3+pi/2)];%设置玻璃的X运动轨迹
    x63=[50*cos(w3)-35+35*cos(w3+pi/2);50*cos(w3)-35+45*cos(w3+pi/2);10*cos(w3)-35+45*cos(w3+pi/2);10*cos(w3)-35+35*cos(w3+pi/2)];%设置玻璃的X运动轨迹
    x641=10*cos(w3)-35+60*cos(w3+pi/2);%设置左灯的X运动轨迹
    x642=50*cos(w3)-35+60*cos(w3+pi/2);%设置右灯的X运动轨迹
    y61=[50*sin(w3)-15;50*sin(w3)-15+60*sin(w3+pi/2);10*sin(w3)-15+60*sin(w3+pi/2);10*sin(w3)-15];%设置小车的Y运动轨迹
    y62=[50*sin(w3)-15+10*sin(w3+pi/2);50*sin(w3)-15+20*sin(w3+pi/2);10*sin(w3)-15+20*sin(w3+pi/2);10*sin(w3)-15+10*sin(w3+pi/2)];%设置玻璃的Y运动轨迹
    y63=[50*sin(w3)-15+35*sin(w3+pi/2);50*sin(w3)-15+45*sin(w3+pi/2);10*sin(w3)-15+45*sin(w3+pi/2);10*sin(w3)-15+35*sin(w3+pi/2)];%设置玻璃的Y运动轨迹
    y641=10*sin(w3)-15+60*sin(w3+pi/2);%设置左灯的Y运动轨迹
    y642=50*sin(w3)-15+60*sin(w3+pi/2);%设置右灯的Y运动轨迹
    set(h1,'xdata',x61,'ydata',y61); %改变小车位置
    set(h2,'xdata',x62,'ydata',y62); %改变玻璃位置
    set(h3,'xdata',x63,'ydata',y63); %改变玻璃位置
    set(d1,'xdata',x641,'ydata',y641,'color','y'); %改变左灯位置，并使灯泡亮起
    set(d2,'xdata',x642,'ydata',y642); %改变右灯位置
    set(gcf,'doublebuffer','on');
    drawnow;%小车实现旋转，正对车库
end
t6=0;
while t6<65
    t6=t6+dt;
    x61=[15;15;-25;-25];%设置小车、玻璃的X运动轨迹
    y61=[-15-t6;45-t6;45-t6;-15-t6];%设置小车的Y运动轨迹
    y62=[-5-t6;5-t6;5-t6;-5-t6];%设置玻璃的Y运动轨迹
    y63=[20-t6;30-t6;30-t6;20-t6];%设置玻璃的Y运动轨迹
    y64=45-t6;%设置灯的Y运动轨迹
    set(h1,'xdata',x61,'ydata',y61); %改变小车位置
    set(h2,'xdata',x61,'ydata',y62); %改变玻璃位置
    set(h3,'xdata',x61,'ydata',y63); %改变玻璃位置
    set(d1,'xdata',-25,'ydata',y64,'color','y'); %改变左灯位置，并使灯泡亮起
    set(d2,'xdata',15,'ydata',y64,'color','w'); %改变右灯位置
    set(gcf,'doublebuffer','on');
    drawnow;%实现小车倒入库中
end
pause(1);%暂停1S
fill([-100,100,100,-100],[70,70,100,100],[0,0.4,0]);%重新绘制上半花坛，覆盖文字
t7=0;
while t7<65
    t7=t7+dt;
    x71=[15;15;-25;-25];%设置小车、玻璃的X运动轨迹
    y71=[-80+t7;-20+t7;-20+t7;-80+t7];%设置小车的Y运动轨迹
    y72=[-70+t7;-60+t7;-60+t7;-70+t7];%设置玻璃的Y运动轨迹
    y73=[-45+t7;-35+t7;-35+t7;-45+t7];%设置玻璃的Y运动轨迹
    y74=-20+t7;%设置灯的Y运动轨迹
    set(h1,'xdata',x71,'ydata',y71); %改变小车位置
    set(h2,'xdata',x71,'ydata',y72); %改变玻璃位置
    set(h3,'xdata',x71,'ydata',y73); %改变玻璃位置
    set(d1,'xdata',-25,'ydata',y74,'color','w'); %改变左灯位置，并使灯泡熄灭
    set(d2,'xdata',15,'ydata',y74,'color','y'); %改变右灯位置，并使灯泡亮起
    set(gcf,'doublebuffer','on');
    drawnow;%实现小车离开车库
end
w4=pi;	
while w4>pi/2
    w4=w4-dw;
    x81=[25+10*cos(w4);25+10*cos(w4)+60*cos(w4-pi/2);25+10*cos(w4)+40*cos(w4)+60*cos(-pi/2+w4);25+10*cos(w4)+40*cos(w4)];%设置小车的X运动轨迹
    x82=[25+10*cos(w4)+10*cos(w4-pi/2);25+10*cos(w4)+20*cos(w4-pi/2);25+10*cos(w4)+40*cos(w4)+20*cos(w4-pi/2);25+10*cos(w4)+40*cos(w4)+10*cos(w4-pi/2)];%设置玻璃的X运动轨迹
    x83=[25+10*cos(w4)+35*cos(w4-pi/2);25+10*cos(w4)+45*cos(w4-pi/2);25+10*cos(w4)+40*cos(w4)+45*cos(w4-pi/2);25+10*cos(w4)+40*cos(w4)+35*cos(w4-pi/2)];%设置玻璃的X运动轨迹
    x841=25+10*cos(w4)+40*cos(w4)+60*cos(-pi/2+w4);%设置左灯的X运动轨迹
    x842=25+10*cos(w4)+60*cos(w4-pi/2);%设置右灯的X运动轨迹
    y81=[-15+10*sin(w4);-15+10*sin(w4)+60*sin(w4-pi/2);-15+10*sin(w4)+40*sin(w4)+60*sin(-pi/2+w4);-15+10*sin(w4)+40*sin(w4)];%设置小车的Y运动轨迹
    y82=[-15+10*sin(w4)+10*sin(w4-pi/2);-15+10*sin(w4)+20*sin(w4-pi/2);-15+10*sin(w4)+40*sin(w4)+20*sin(w4-pi/2);-15+10*sin(w4)+40*sin(w4)+10*sin(w4-pi/2)];%设置玻璃的Y运动轨迹
    y83=[-15+10*sin(w4)+35*sin(w4-pi/2);-15+10*sin(w4)+45*sin(w4-pi/2);-15+10*sin(w4)+40*sin(w4)+45*sin(-pi/2+w4);-15+10*sin(w4)+40*sin(w4)+35*sin(w4-pi/2)];%设置玻璃的Y运动轨迹
    y841=-15+10*sin(w4)+40*sin(w4)+60*sin(-pi/2+w4);%设置左灯的Y运动轨迹
    y842=-15+10*sin(w4)+60*sin(w4-pi/2);%设置右灯的Y运动轨迹
    set(h1,'xdata',x81,'ydata',y81); %改变小车位置
    set(h2,'xdata',x82,'ydata',y82); %改变玻璃位置
    set(h3,'xdata',x83,'ydata',y83); %改变玻璃位置
    set(d1,'xdata',x841,'ydata',y841); %改变左灯位置
    set(d2,'xdata',x842,'ydata',y842,'color','y'); %改变右灯位置，并使灯泡亮起
    set(gcf,'doublebuffer','on');
    drawnow;%实现小车向右旋转
end
t8=0;
while t8<80
    t8=t8+dt;
    x91=[-95+t1+t8;-35+t1+t8;-35+t1+t8;-95+t1+t8];%设置小车的X运动轨迹
    x92=[-85+t1+t8;-75+t1+t8;-75+t1+t8;-85+t1+t8];%设置玻璃的X运动轨迹
    x93=[-60+t1+t8;-50+t1+t8;-50+t1+t8;-60+t1+t8];%设置玻璃的X运动轨迹
    x94=-37+t1+t8;%设置灯的X运动轨迹
    y91=[-5 -5 35 35];%设置小车、玻璃的Y运动轨迹
    set(h1,'xdata',x91,'ydata',y91); %改变小车位置
    set(h2,'xdata',x92,'ydata',y91); %改变玻璃位置
    set(h3,'xdata',x93,'ydata',y91); %改变玻璃位置
    set(d1,'xdata',x94,'ydata',35); %改变左灯位置
    set(d2,'xdata',x94,'ydata',-5, 'color','w'); %改变右灯位置，并使灯泡熄灭
    set(gcf,'doublebuffer','on');
    drawnow;%使小车离开考场
end
clf;   %清屏幕，载入新的页面
clear;%清除
axis([0,10,0,10]);%建立坐标系
 hold on;%保持坐标
axis off;%% 关闭坐标
text(0.2,7, '        谢谢观看！！！' ,'fontsize',30,'color','b');pause(0.1);%鸣谢
text(0.1,5.5, '科目二其他项目未完待续' ,'fontsize',25,'color','b');pause(2);
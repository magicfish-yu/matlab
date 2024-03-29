%作者:1504089011
line([1 6 6 1 1],[5 5 10 10 5]);%火车车厢
line([7 7 9 9 7],[5 10 10 5 5]);%火车驾驶室
line([9 9 13 13 9],[5 7.5 7.5 5 5]);%火车头
line([13 13.5 13],[7.5 6.25 5]);%火车头
line([11.5 11.5 12.5 12.5],[7.5 9 9 7.5]);%烟囱
line([11.5 11.25 11.25 12.75 12.75 12.5],[9 9 9.5 9.5 9 9]);%烟囱
line([7.5 8.5 8.5 7.5 7.5],[7.25 7.25 9 9 7.25]);%驾驶室窗户
line([7 6.5 6.5 7],[5 5 4 4]);%火车头车轮护板
line([13 14 13.25],[5 4 4]),hold on;%火车头车轮护板

t=0:0.1:3*pi;
x1=11.75+1.5*cos(t);
y1=3.5+1.5*sin(t);
x10=11.75+0.3*cos(t);
y10=3.5+0.3*sin(t);
x11=11.75+0.3*cos(t);
y11=4.5+0.3*sin(t);%第一个轮子

x2=8.25+1.5*cos(t);
y2=3.5+1.5*sin(t);
x20=8.25+0.3*cos(t);
y20=3.5+0.3*sin(t);
x21=8.25+0.3*cos(t);
y21=4.5+0.3*sin(t);%第二个轮子

x3=4.8+1.5*cos(t);
y3=3.5+1.5*sin(t);
x30=4.8+0.3*cos(t);
y30=3.5+0.3*sin(t);%第三个轮子

x4=1.8+1.5*cos(t);
y4=3.5+1.5*sin(t);
x40=1.8+0.3*cos(t);
y40=3.5+0.3*sin(t);%第四个轮子
plot(x1,y1,'b',x10,y10,'b',x2,y2,'b',x20,y20,'b',x3,y3,'b',x30,y30,'b',x4,y4,'b',x40,y40,'b');%火车车轮

axis([0 15,0 15]),axis off;

text(1,13,'蒸汽火车主动轮通过带动杠杆进行往复运动，');
text(1,11,'从而带动被动轮进行运动！这样火车就动起来了');%文字注释

a=100;
while a>0
a=a-0.08;
c1=line([11.75 11.75+0.85*cos(a)],[3.5 3.5+0.85*sin(a)],'color','k','LineWidth',4.5);
c2=line([8.25 8.25+0.85*cos(a)],[3.5 3.5+0.85*sin(a)],'color','k','LineWidth',4.5);
x11=11.75+cos(a)+0.3*cos(t);
y11=3.5+sin(a)+0.3*sin(t);
c3=plot(x11,y11);
x21=8.25+cos(a)+0.3*cos(t);
y21=3.5+sin(a)+0.3*sin(t);
c4=plot(x21,y21);
c5=line([11.75+cos(a) 8.25+cos(a)],[3.5+sin(a) 3.5+sin(a)],'color','k','LineWidth',4.5);
drawnow;
delete(c1,c2,c3,c4,c5);%利用循环语句使轮轴转动


end

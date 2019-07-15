figure('name','������ʾ','Color','w');%������Ŀ
axis([-400,400,-400,400]);%�������귶Χ
set(gcf,'DoubleBuffer','on');%��������
axis ('off');%ʹ��������ʧ

text(-100,360,'S','fontsize',40,'color','b');%��ʾ��ĸs
pause(0.4)%��ʱ
text(-40,360,'o','fontsize',40,'color','r');%��ʾ��ĸo
pause(0.4)%��ʱ
text(0,360,'G','fontsize',40,'color','y');%��ʾ��ĸG
pause(0.4)%��ʱ
text(40,360,'o','fontsize',40,'color','b');%��ʾ��ĸo
pause(0.4)%��ʱ
text(80,360,'u','fontsize',40,'color','g');%��ʾ��ĸu
pause(0.4)%��ʱ

%�����ľ�Ϊ�����������������
a1=line([-100,100],[160,160],'color','k','linewidth',1);%�º���
a2=line([100,100],[160,180],'color','k','linewidth',1);%������
a3=line([-100,100],[180,180],'color','k','linewidth',1);%�Ϻ���
a4=line([-100,-100],[160,180],'color','k','linewidth',1);%������

%����Ϊʹ�����������𽥱�������߾��ƶ�
dt=0.08;%��λ�仯��
t1=-100;%�߶ζ˵�ĳ�ʼ����
t2=100;
t3=160;
t4=170;
while t4<220 %ȷ����Χ
    t1=t1-dt;
    t2=t2+dt;
    t3=t3;
    t4=t4+dt;

    set(a1,'xdata',[t1 t2],'ydata',[t3 t3]);
    set(a2,'xdata',[t2 t2],'ydata',[t3 t4]);
    set(a3,'xdata',[t1 t2],'ydata',[t4 t4]);
    set(a4,'xdata',[t1 t1],'ydata',[t3 t4]);

    pause(0.001);%ͣ��0.001��
    drawnow;
end
hold on;%���������ἰͼ�β��仯

%����Ϊ��ʾ������ť
fill([-70 -70 -5 -5],[100 140 140 100],'c');%�����ο飬��ɫ
fill([5 5 70 70],[100 140 140 100],'c');
pause(0.1);
text(-69,120,'�ѹ�һ��','fontsize',10,'color','k');%��ʾ����
text(7,120,'����','fontsize',10,'color','k');

%��������Ϊ������ͷ����I�Σ���ɫ
a5=line([250 260],[320 320],'color','k','linewidth',1);
a6=line([250 260],[300 300],'color','k','linewidth',1);
a7=line([255 255],[300 320],'color','k','linewidth',1);

%����Ϊʵ�������ƶ�
dt1=0.5;%����λ����
dt2=0.6;%����λ����
t5=250;%���߶�����ĳ�ֵ
t6=260;
t7=300;
t8=320;
t9=255;

while t9>150%ʹ��������·��ƶ�������������Ҳ�
    t5=t5-dt1;
    t6=t6-dt1;
    t7=t7-dt2;
    t8=t8-dt2;
    t9=t9-dt1;

    set(a5,'xdata',[t5 t6],'ydata',[t8 t8]);
    set(a6,'xdata',[t9 t9],'ydata',[t7 t8]);
    set(a7,'xdata',[t5 t6],'ydata',[t7 t7]);

    pause(0.001);%ͣ��0.001��
    drawnow;
end
%������Ƶ�ʱ������ʹ���׵ķ�����ʹ�����ʧ
a5=line([145 155],[194 194],'color','w','linewidth',1);
a7=line([145 155],[174 174],'color','w','linewidth',1);
%����һ�����׺��ԣ�ӦΪ�������������߶���Ӱ��
a2=line([150 150],[160,220],'color','k','linewidth',1);%�����׵�

%����Ϊʵ�ֹ�����˸,������ɫ�ı仯
i=8;%��˸����Ϊ4��
flag=1;%��־����
while i>0
 if flag==1 %��flagΪ1��ʹ�������ͬʱ��־��0
 a8=line([-140 -140],[170 210],'color','b','linewidth',1);
 flag=0;
 else     %��flagΪ0����겻����ͬʱ��־��1
 a8=line([-140 -140],[170 210],'color','w','linewidth',1);
 flag=1;
 end
 i=i-1;
 pause(0.5);
end

%����Ϊ��ʾ����������ݣ���''�人�Ṥ��ѧ''
text(-145,185,'��','fontsize',15,'color','k');
pause(0.5);
text(-130,185,'��','fontsize',15,'color','k');
pause(0.5);
text(-115,185,'��','fontsize',15,'color','k');
pause(0.5);
text(-100,185,'��','fontsize',15,'color','k');
pause(0.5);
text(-85,185,'��','fontsize',15,'color','k');
pause(0.5);
text(-70,185,'ѧ','fontsize',15,'color','k');
pause(2);

%��������Ϊģ�ⰴ�»س�����ʹ�ѹ�һ�°�ť����ɫ
fill([-70 -70 -5 -5],[100 140 140 100],'g');
text(-69,120,'�ѹ�һ��','fontsize',10,'color','r');

pause(1.5);
clf %����Ļ�������µ�ҳ��
axis([-400,400,-400,400]);%���¶�������ϵ
hold on;
set(gcf,'DoubleBuffer','on');
axis ('off');

%����Ϊ���صȴ��Ļ���
%�����ľ�Ϊ�����ȿ������
a8=line([-100 -100],[-300 -250],'color','k','linewidth',1);%
a9=line([-100 100],[-250 -250],'color','k','linewidth',1);
a10=line([100 100],[-300 -250],'color','k','linewidth',1);
a11=line([-100 100],[-300 -300],'color','k','linewidth',1);

%����Ϊ��ʾ��̬�Ľ������
dt3=0.2;%��λ�仯��
f=-100;%������ͽ������ĳ�ʼλ��
i=1;%��λ�ٶ���
text(-240,-280,'��������','fontsize',10,'color','k');%��ʾ����
ball=line(-100,0,'color','r','marker','.','markersize',150);%����

while f<100
 f=f+i*dt3;
 if f>100
 f=100;
 end
 set(ball,'xdata',f,'ydata',50);%ʹ�������������˶�
 a12=line([-100 f],[0 0],'color','k','linewidth',1);%�»����������
 i=i*1.2;%���٣��ٶ��𽥼ӿ�
 fill([-100 -100 f f],[-298 -252 -252 -298],'c');%����������
 pause(0.5);
end
pause(1);

clf %����Ļ�������µ�һҳ
axis([-400,400,-400,400]);%���¶�������ϵ�������ֲ��仯
hold on;
set(gcf,'DoubleBuffer','on');
axis ('off');

%����Ϊ��ʾ���������������λ�����
text(-350,350,'�ѹ�','fontsize',50,'color','k');%�������̱�
text(-300,210,'ͼƬ','fontsize',10,'color','k');
text(-300,140,'��Ƶ','fontsize',10,'color','k');
text(-300,70,'����','fontsize',10,'color','k');

%����Ϊ��ʾ���������ݣ�λ���Ҳ�
text(-150,260,'�人�Ṥ��ѧ','fontsize',15,'color','k');
text(-150,220,'���421,000�����','fontsize',8,'color','k');
text(-150,160,'ѧУԭ����ʳ���人��ʳ��ҵѧУ��1998��ʵ�����������ʡ�������Ժ���ʡ����Ϊ������','fontsize',10,'color','k');
text(-120,120,'��ר������    ͼ���','fontsize',10,'color','k');
text(-120,90,'�˲�����     �������','fontsize',10,'color','k');
text(-150,30,'for more  http://www.whpu.edu.com >>','fontsize',10,'color','r');%��ʾ����
text(-150,0,'��ҳ����','fontsize',9,'color','k');

%����Ϊ��ʾ���ֶ�̬��Ϣ������������޹�
fill([-320 -320 -305 -305],[200 220 220 200],'c');%�����ͼ������壬��ɫ
fill([-312 -312 -307 -307],[220 225 225 220],'c');%�������ť
fill([-320 -320 -305 -305],[130 140 140 130],[0.5 0 0]);%����Ƶͼ��ĺ�ɫ�ײ�
%��������Ϊ����Ƶͼ���ϲ��ֵ�����
a13=line([-320 -320],[140 155],'color','k','linewidth',1);
a14=line([-320 -305],[155 155],'color','k','linewidth',1);
a15=line([-305 -305],[140 155],'color','k','linewidth',1);
%����һ��Ϊȷ���ƶ��߶εĳ�ʼλ�ã�����Ϊ��Ƶ��
a16=line([-320 -315],[140 155],'color','k','linewidth',4);
%����Ϊ���ø��߶ε��ƶ�������Լ��������������Բ
%��֮���仯�����
dt4=0.3;%�߶ε�λλ����
dt5=0.15;%Բ�뾶�ĵ�λ����
t11=-320;%�߶�һ�˵ĳ�ʼ������
t12=-315;%��һ��
r=1;%Բ�뾶��ֵ
m=4;%ѭ��4��
while m>0
 if  t12<-305  %���߶ε����϶˵�δ����߿���Ҳ�
 t11=t11+dt4;
 t12=t12+dt4;
 set(a16,'xdata',[t11 t12],'ydata',[140 155]);%���߶�����
 r=r+dt5;%Բ�뾶����
 a=0:0.1:2*pi;
 plot(-312+r*cos(a),210+r*sin(a));%����������л�Բ
 else   %���߶ε����϶˵㵽��߿���Ҳ�
 t11=-320; %��ʹ�߶λص���ʼλ��
 t12=-315;
 r=1;  %Բ�뾶�س�ֵ
 m=m-1;
 fill([-320 -320 -305 -305],[200 220 220 200],'c');%����Բ��ʹ���ظ��仯,������ԭ�������ڸ�
 end
 pause(0.005);
end
plot(-312+5*cos(a),210+5*sin(a));%�˳�֮���ٴλ�Բ����ȡ

%����Ϊ��ʾ������Ϣ��Ҳ������
text(300,-260,'��������1504  ����','fontsize',10,'color','k');
text(300,-300,'2017.11.26','fontsize',8,'color','k');
  
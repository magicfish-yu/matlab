%����:15040080187����ǿ
figure1 = figure('Color',[0.2 0.4 0]);%���庯��

axis([-1,15,-1,15]);%���ƶ�άͼ��

hold on;%���ֵ�ǰͼ�μ���ϵ���е�����

axis('off');%��������̶ȣ�����䱳��

txt=text(-1,9,'���컻��һ�����ֻ�Android 1000','fontsize',20,'fontname','����','color','k');%��������

pause(2);

set(gcf,'doublebuffer','on');%��������

delete(txt);%ɾ����������

txt=text(2,9,'�Ͽ쿪�����ԣ�','fontsize',25,'fontname','����','color','k');%��������

pause(2);

delete(txt);%ɾ����������

rectangle('position',[1,0,6,15],'curvature',[0.2,0.2],'edgecolor','k','facecolor',[0 0 0]);%�ֻ�����

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.7 0.7 0.7]);%�ֻ���Ļ

rectangle('position',[3,0.3,2,1.2],'curvature',[0.2,0.2],'edgecolor','k','facecolor',[0.5 0.7 0.7]);%�ֻ�home��

rectangle('position',[3.1,0.4,1.8,1],'curvature',[0.2,0.2],'edgecolor','k','facecolor','w');%�ֻ�home��

hlm1=line([5.8 6.2],[1.2 0.9],'color','b','linewidth',1);%�ֻ����˼�

hlm2=line([5.8 6.2],[0.6 0.9],'color','b','linewidth',1);%�ֻ����˼�

hlm3=line([1.8 2.2],[0.9 0.6],'color','b','linewidth',1);%�ֻ�ǰ����

hlm4=line([1.8 2.2],[0.9 1.2],'color','b','linewidth',1);%�ֻ�ǰ����

rectangle('position',[2.05,14.25,0.30,0.30],'curvature',[1,1],'edgecolor','w','facecolor','w');%�ֻ�ǰ������ͷ

rectangle('position',[2.13,14.33,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ�ǰ������ͷ

txt=text(2.65,14.5,'LUCAS','fontsize',10,'fontname','����','color','w');%�ֻ�Ʒ������

rectangle('position',[4.25,14.35,1.5,0.25],'curvature',[0,0],'edgecolor','w','facecolor','w');%�ֻ�ǰ������ͷ

x1=[4.25,5.75];

y1=[14.455,14.455];

plot(x1,y1);

hold on;

rectangle('position',[7,11,0.05,2],'curvature',[1,1],'edgecolor','w','facecolor','w');%�ֻ�������

rectangle('position',[7,10,0.05,0.5],'curvature',[1,1],'edgecolor','w','facecolor','w');%�ֻ����ػ���

pause(4);

hold on; 

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.1 0.5 0.5]);%�ֻ���Ļ

rectangle('position',[2.13,14.33,0.15,0.15],'curvature',[1,1],'edgecolor','b','facecolor','b');%�ֻ�ǰ������ͷ�����ɫ

txt1=text(7.5,9.5,'������!!!!!!','fontsize',20,'fontname','����','color','r');%�����԰�

txt2=text(2.90,7.5,'L','fontsize',20,'fontname','����','color','k');%��������

h1=line(3.00,8.5,'color','k','marker','^','markersize',5);

h19=line(3.00,8.5,0,'color','k','marker','v','markersize',5);

pause(1);

txt3=text(3.45,7.5,'U','fontsize',20,'fontname','����','color','r');%��������

h2=line(3.65,9.25,0,'color','r','marker','^','markersize',5);

h21=line(3.65,9.25,0,'color','r','marker','v','markersize',5');

pause(0.9);

txt4=text(4.00,7.5,'C','fontsize',20,'fontname','����','color','g');%��������

h3=line(4.15,9.5,0,'color','g','marker','^','markersize',5);

h10=line(4.15,9.5,0,'color','g','marker','v','markersize',5);


pause(0.7);

txt5=text(4.45,7.5,'A','fontsize',20,'fontname','����','color','w');%��������

h4=line(4.65,9.25,'color','w','marker','^','markersize',5);

h12=line(4.65,9.25,0,'color','w','marker','v','markersize',5);

pause(0.5);

txt6=text(4.95,7.5,'S','fontsize',20,'fontname','����','color',[0.7 0.7 0.4]);%��������

h5=line(5.15,8.5,'color',[0.7 0.7 0.4],'marker','^','markersize',5);

h11=line(5.15,8.5,0,'color',[0.7 0.7 0.4],'marker','v','markersize',5);

pause(2);

txt7=text(2.90,7.5,'LUCAS','fontsize',20,'fontname','����','color','k');%��������

pause(2);

delete(txt1);

hlm5=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%�ֻ����˼�

hlm6=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%�ֻ����˼�

hlm7=line([1.8 2.2],[0.9 0.6],'color','r','linewidth',1);%�ֻ�ǰ����

hlm8=line([1.8 2.2],[0.9 1.2],'color','r','linewidth',1);%�ֻ�ǰ����

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.5 0.5 0.6])%�ֻ���Ļ

rectangle('position',[1.45,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','g');%�ֻ����

txt13=text(1.55,11.25,'΢��','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%�ֻ����

txt14=text(3.45,11.25,'QQ','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[5.05,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%�ֻ����

txt15=text(5.15,11.25,'����','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.45,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','w');%�ֻ����

txt19=text(1.55,8.75,'TIM','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%�ֻ����

txt17=text(3.45,8.75,'�ٴ�ն','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[5.05,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%�ֻ����

txt18=text(5.15,8.75,'����','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.45,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','r');%�ֻ����

txt20=text(1.45,6.25,'����������','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor',[0.5 0.5 0.7]);%�ֻ����

txt16=text(3.35,6.25,'֪��','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

txt8=text(2.35,13.55,'�й��ƶ�','fontsize',7,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.25,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k')%�ֻ��ź�

rectangle('position',[1.45,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ��ź�

rectangle('position',[1.65,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ��ź�

rectangle('position',[1.85,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%�ֻ��ź�

rectangle('position',[2.05,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%�ֻ��ź�

txt50=text(3.80,13.55,'12:25','fontsize',7,'fontname','����','color','w');%ʱ��

rectangle('position',[6.0,13.35,0.6,0.25],'curvature',[0,0],'edgecolor','k','facecolor','k');%�ֻ�����

rectangle('position',[6.0,13.35,0.4,0.25],'curvature',[0,0],'edgecolor','k','facecolor','g');%�ֻ�����

rectangle('position',[6.6,13.43,0.07,0.1],'curvature',[0,0],'edgecolor','k','facecolor','k');%�ֻ�����

txt51=text(5.3,13.55,'12%','fontsize',7,'fontname','����','color','w');%�ֻ�����������ʾ

h20=line(5.0,13.45,0,'color','red','marker','^','markersize',5);%�ֻ���־

h24=line(5.0,13.45,0,'color','red','marker','v','markersize',5);%�ֻ���־

pause(1);

a=line([3.45 3.65],[3.75 4.75],'color','r','linewidth',1);%��ͷ

b=line([3.65 4.38],[4.75 4.25],'color','r','linewidth',1);%��ͷ

c=line([3.65 4.35],[4.75 2.5],'color','r','linewidth',1);%��ͷ

txt100=text(7.5,9.5,'������Ҫ����������!!!!!!','fontsize',15,'fontname','����','color','r');%�ƶ��Լ�ͷ��

pause(2);%ͣ��0.5��

delete(txt100);

x1=3.45;x2=3.65;x3=4.38;x4=4.35;

y1=3.75;y2=4.75;y3=4.25;y4=2.50;

t=0;dt=0.01;v=0.05;
%����ѭ��ʹ����ƶ�

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

    set(gcf,'doublebuffer','on');%������
end

pause(2);

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor','r');%�����ƽ���

txt28=text(2,9,'���ֵ�����','fontsize',15,'fontname','����','color','w');%������

txt25=text(7.5,9.5,'����������','fontsize',15,'fontname','����','color','w');%������

pause(3);

delete(txt25);

txt26=text(7.5,9.5,'�˳�������','fontsize',15,'fontname','����','color','w');%�˳�������

pause(2);

hlm120=line([5.8 6.2],[1.2 0.9],'color','b','linewidth',1);%�ֻ����˼�

hlm33=line([5.8 6.2],[0.6 0.9],'color','b','linewidth',1);%�ֻ����˼�%�˳�������

pause(2);

delete(txt26);

hlm34=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%�ֻ����˼�

hlm35=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%�ֻ����˼�%�˳�������

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.5 0.5 0.6])%�ֻ���Ļ

rectangle('position',[1.45,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','g');%�ֻ����

txt79=text(1.55,11.25,'΢��','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%�ֻ����

txt80=text(3.45,11.25,'QQ','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[5.05,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%�ֻ����

txt69=text(5.15,11.25,'����','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.45,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','w');%�ֻ����

txt68=text(1.55,8.75,'TIM','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%�ֻ����

txt67=text(3.45,8.75,'�ٴ�ն','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[5.05,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%�ֻ����

txt66=text(5.15,8.75,'����','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.45,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','r');%�ֻ����

txt65=text(1.45,6.25,'����������','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor',[0.5 0.5 0.7]);%�ֻ����

txt63=text(3.35,6.25,'֪��','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

txt62=text(2.35,13.55,'�й��ƶ�','fontsize',7,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.25,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k')%�ֻ��ź�

rectangle('position',[1.45,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ��ź�

rectangle('position',[1.65,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ��ź�

rectangle('position',[1.85,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%�ֻ��ź�

rectangle('position',[2.05,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%�ֻ��ź�

txt61=text(3.80,13.55,'12:25','fontsize',7,'fontname','����','color','w');%ʱ��

rectangle('position',[6.0,13.35,0.6,0.25],'curvature',[0,0],'edgecolor','k','facecolor','k');%�ֻ�����

rectangle('position',[6.0,13.35,0.4,0.25],'curvature',[0,0],'edgecolor','k','facecolor','g');%�ֻ�����

rectangle('position',[6.6,13.43,0.07,0.1],'curvature',[0,0],'edgecolor','k','facecolor','k');%�ֻ�����

txt60=text(5.3,13.55,'12%','fontsize',7,'fontname','����','color','w');%�ֻ�����������ʾ

h9=line(5.0,13.45,0,'color','red','marker','^','markersize',5);%�ֻ���־

h8=line(5.0,13.45,0,'color','red','marker','v','markersize',5);%�ֻ���־

pause(1);

a=line([3.45 3.65],[3.75 4.75],'color','r','linewidth',1);%��ͷ

b=line([3.65 4.38],[4.75 4.25],'color','r','linewidth',1);%��ͷ

c=line([3.65 4.35],[4.75 2.5],'color','r','linewidth',1);%��ͷ

txt1=text(7.5,9.5,'������Ҫ��TIM��!!!!!!','fontsize',15,'fontname','����','color','r');%�԰�

pause(3);%ͣ��2��

delete(txt1);

x1=3.45;x2=3.65;x3=4.38;x4=4.35;

y1=3.75;y2=4.75;y3=4.25;y4=2.50;

t=0;dt=0.01;v=0.05;
%����ѭ��ʹ����ƶ�

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

    set(gcf,'doublebuffer','on');%������
end

pause(2);

hlm30=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%�ֻ����˼�

hlm31=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%�ֻ����˼�%�˳�������

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor','b');%tim����

txt24=text(2,9,'    TIM','fontsize',15,'fontname','����','color','w');%TIM

txt25=text(7.5,9.5,'����TIM','fontsize',15,'fontname','����','color','w');%TIM

pause(3);

delete(txt25);

txt26=text(7.5,9.5,'�˳�TIM','fontsize',15,'fontname','����','color','w');%�༶����

pause(2);

hlm28=line([5.8 6.2],[1.2 0.9],'color','b','linewidth',1);%�ֻ����˼�

hlm29=line([5.8 6.2],[0.6 0.9],'color','b','linewidth',1);%�ֻ����˼�%�˳�TIM

pause(2);

delete(txt26);

hlm32=line([5.8 6.2],[1.2 0.9],'color','r','linewidth',1);%�ֻ����˼�

hlm39=line([5.8 6.2],[0.6 0.9],'color','r','linewidth',1);%�ֻ����˼�%�˳�������

rectangle('position',[1.2,1.7,5.6,12.2],'curvature',[0,0],'edgecolor','k','facecolor',[0.5 0.5 0.6])%�ֻ���Ļ

rectangle('position',[1.45,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','g');%�ֻ����

txt30=text(1.55,11.25,'΢��','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%�ֻ����

txt31=text(3.45,11.25,'QQ','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[5.05,11.5,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','b');%�ֻ����

txt32=text(5.15,11.25,'����','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.45,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','w');%�ֻ����

txt33=text(1.55,8.75,'TIM','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%�ֻ����

txt34=text(3.45,8.75,'�ٴ�ն','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[5.05,9.0,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','y');%�ֻ����

txt35=text(5.15,8.75,'����','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.45,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor','r');%�ֻ����

txt36=text(1.45,6.25,'����������','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[3.15,6.50,1.33,1.7],'curvature',[0.4,0.4],'edgecolor','k','facecolor',[0.5 0.5 0.7]);%�ֻ����

txt37=text(3.35,6.25,'֪��','fontsize',8,'fontname','����','color','k');%�ֻ���Ӫ��

txt38=text(2.35,13.55,'�й��ƶ�','fontsize',7,'fontname','����','color','k');%�ֻ���Ӫ��

rectangle('position',[1.25,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k')%�ֻ��ź�

rectangle('position',[1.45,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ��ź�

rectangle('position',[1.65,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k','facecolor','k');%�ֻ��ź�

rectangle('position',[1.85,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%�ֻ��ź�

rectangle('position',[2.05,13.42,0.15,0.15],'curvature',[1,1],'edgecolor','k');%�ֻ��ź�

txt9=text(3.80,13.55,'12:25','fontsize',7,'fontname','����','color','w');%ʱ��

rectangle('position',[6.0,13.35,0.6,0.25],'curvature',[0,0],'edgecolor','k','facecolor','k');%�ֻ�����

rectangle('position',[6.0,13.35,0.4,0.25],'curvature',[0,0],'edgecolor','k','facecolor','g');%�ֻ�����

rectangle('position',[6.6,13.43,0.07,0.1],'curvature',[0,0],'edgecolor','k','facecolor','k');%�ֻ�����

txt11=text(5.3,13.55,'12%','fontsize',7,'fontname','����','color','w');%�ֻ�����������ʾ

h6=line(5.0,13.45,0,'color','red','marker','^','markersize',5);%�ֻ���־

h7=line(5.0,13.45,0,'color','red','marker','v','markersize',5);%�ֻ���־

pause(3);%ͣ��3S

txt70=text(7.5,9.5,'лл�ۿ�','fontsize',15,'fontname','����','color','w');%������'лл�ۿ�'

pause(3);%ͣ��3S

delete(txt70);%ɾ��70

txt71=text(7.5,9.5,'��������1504��','fontsize',15,'fontname','����','color','w');%�༶����

txt72=text(7.5,8.5,'1504080187','fontsize',15,'fontname','����','color','w');%ѧ��
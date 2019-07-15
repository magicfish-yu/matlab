%����:1604089002
%------------    ����.m�ļ���������Ϊmain.m   -----
%------------    main.m    ��ʼ    ----------------



% ����ʽ�Կط���ͼ�ν��棬δ������ť����������RLCϵͳʱ���治��仯
% �����������仯��ע�⣬��Ҫ����Ƶ���Ĳ����������ĸ��Կ�ͼ��Ҫʱ�䣩
% ���ߣ�ʯ��1604089002
% ���ڣ�2016-12-17


clear;                            %��չ����ռ�
clc;                              %��������

% ��ʼ��ͼ�񴰿�

%����ȫ�ֱ���

global  HandleAxes2      %�ڶ���ʵ��������������
global  CircuitType      %�ڶ���ʵ�����ĵ�ǰ����
global  HandleAxes3      %������ʵ��������������
global  HandleAxes4      %���ĸ�ʵ��������������
global  HandleAxes5      %�����ʵ��������������
CircuitType=1;

global  whell1           %��һ������������Բ��ľ��
global  HandleWhell1     %��һ������������Բ�����������
global  whell2           %�ڶ�������������Բ��ľ��
global  whell3           %����������������Բ��ľ��

global  LX               %��һ������������ֱ�ߵ�x������(x1,x2)
global  WhellY1          %��һ������������Բ���y����
global  WhellY2          %�ڶ�������������Բ���y����
global  WhellY3          %����������������Բ���y����

global  RValue           %�������ֵ
global  LValue           %�������ֵ
global  CValue           %�������ֵ
global  den              %���ݺ����ķ���
global  num              %���ݺ����ķ�ĸ
global  G                %���ݺ���

global  word1            %��ʾ����ֵ
global  word2            %��ʾ���ֵ
global  word3            %��ʾ����ֵ

RValue=1.5;              %��ʼ������ֵ
LValue=2;                %��ʼ�����ֵ
CValue=2;                %��ʼ������ֵ

num=1.0/(LValue*CValue); %���ݺ����ķ���
den=[1,1.0/(RValue*CValue),1.0/(LValue*CValue)];%���ݺ����ķ�ĸ

G=tf(num,den);           %���ݺ������ʽ


%ʹ�ö�������������
h_f=figure('Position',[200 100 1000 600]); %ͼ�δ��ڵ����µ�x���ꡢy���꣬ͼ�δ��ڵĳ�����
set(h_f,'Name','����ʽ�Կط���ͼ�ν���',...
    'menubar','none','NumberTitle','off')
%����Ϊ'����ʽͼ�ν���'������Ϊ��ɫ���˵����ޣ����������

%�����˵� 
hFile=uimenu(h_f,'label','&File');               %����File�˵�(��ǩΪ'File')
hAbout=uimenu(h_f,'label','&��������');               %����Help�˵�(��ǩΪ'Help')

uimenu(hFile,'label','&Exit','separator','on','call',...
    'clear;clc;close all;');                    %��Exit�Ӳ˵�
    %��Exit������󣬵���close�����ر�2������('ͼ�δ���ʾ��'��)
uimenu(hAbout,'label','&about','call',...
    ['hAboutFigure=figure(''Position'',[450,250,450,350],''Name'',''about this window'',''Menubar'',''none'',''NumberTitle'',''off'');',...
    'axis([0,300,0,200]);','hold on;','axis (''off'');',...
    'text(10,140,''��������1401��'',''fontsize'',32,''color'',''blue'');',...
    'text(0,90,''ʯ�� 1604089002'',''fontsize'',32,''color'',''blue'');']); %��about�Ӳ˵�
    %��about������󣬵���figure��text�Ⱥ�������һ���´��ڣ�����������ʾ'ʯ�� 1604089002'


subplot(2,3,1);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�1��
bode(G);grid;             %������ͼ��������

subplot(2,3,2);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�2��
pzmap(num,den);           %���㼫��
rlocus(num,den);          %�����켣

subplot(2,3,4);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�4��
step(G);grid;             %����Ծ��Ӧ

subplot(2,3,5);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�5��
nyquist(G);               %���ο�ʩ������


subplot(2,3,3);
axis([0,300,0,200]); % ��������ϵ��axis([XMIN XMAX YMIN YMAX])
hold on
HandleAxes2=get(gcf,'CurrentAxes');                 %ͼ�εĵ�ǰ������ľ��
%img1=imread('RLCCircuitParllel.PNG');               %��ȡͼ���ļ�
%imshow(img1);                                       %��ʾͼƬ
%h2=axes('Position',[0,0,1,1]);
title('RLC����ϵͳ');
text(2,185,'Vin','fontsize',12);                  %���"Vin"
text(255,185,'Vout','fontsize',12);               %���"Vout"

text(5,170,'o','fontsize',12);                   %�����˵�o1
text(5,71,'o','fontsize',12);                    %�����˵�o2
text(285,170,'o','fontsize',12);                 %�����˵�o3
text(285,71,'o','fontsize',12);                  %�����˵�o4

line([14,60],[168,168],'color','k','linewidth',2);%�ϵ�һ������
line(60,168,'Marker','o','markersize',15,'MarkerFaceColor',[0.8,0.8,0.8],'MarkerEdgeColor','k','linewidth',2); %�����
line(84,168,'Marker','o','markersize',15,'MarkerFaceColor',[0.8,0.8,0.8],'MarkerEdgeColor','k','linewidth',2); %�����
line(108,168,'Marker','o','markersize',15,'MarkerFaceColor',[0.8,0.8,0.8],'MarkerEdgeColor','k','linewidth',2);%�����
line([46,124],[162,162],'color',[0.8,0.8,0.8],'linewidth',8); %�ڸ�סһ��Բ���Ӿ�����Ϊ���
line([120,285],[168,168],'color','k','linewidth',2);%�ϵڶ�������
line([14,285],[70,70],'color','k','linewidth',2);   %�º���

line([200,200],[168,140],'color','k','linewidth',2);   %�е�һ������
line([200,200],[100,70],'color','k','linewidth',2);   %�еڶ�������
line([160,240],[140,140],'color','k','linewidth',2);   %�е�һ������
line([160,240],[100,100],'color','k','linewidth',2);   %�еڶ�������

%������
line([150,150],[135,105],'color','k','linewidth',2);   %�����һ������
line([170,170],[135,105],'color','k','linewidth',2);   %����ڶ�������
line([150,170],[135,135],'color','k','linewidth',2);   %�����һ������
line([150,170],[105,105],'color','k','linewidth',2);   %����ڶ�������
line([160,160],[140,135],'color','k','linewidth',2);   %�������������
line([160,160],[105,100],'color','k','linewidth',2);   %������ĸ�����

%������
line([240,240],[140,130],'color','k','linewidth',2);   %���ݵ�һ������
line([240,240],[110,100],'color','k','linewidth',2);   %���ݵڶ�������
line([225,255],[130,130],'color','k','linewidth',2);   %���ݵ�һ������
line([225,255],[110,110],'color','k','linewidth',2);   %���ݵڶ�������

%���R��L��C
text(80,150,'L','backgroundcolor','y','fontsize',12);  %���R
text(120,120,'R','backgroundcolor','y','fontsize',12);  %���R
text(260,120,'C','backgroundcolor','y','fontsize',12);  %���R

%д���ݺ���
text(150,55,'1/LC','fontsize',12);
text(50,40,'G(s)= --------------------------','fontsize',12);
text(110,20,'S*S+S/RC+1/LC','fontsize',12);
hold on                                           %����ͼ���ڹ̶���λ����ʾ
axis ('off');


subplot(2,3,6);
axis([0,300,0,200]); % ��������ϵ��axis([XMIN XMAX YMIN YMAX])
hold on 
text(2,185,'R','backgroundcolor','y','fontsize',10);
text(2,125,'L','backgroundcolor','y','fontsize',10);
text(2,68,'C','backgroundcolor','y','fontsize',10);

text(40,205,'��ť','backgroundcolor','y','fontsize',10);
text(40,145,'��ť','backgroundcolor','y','fontsize',10);
text(40,88,'��ť','backgroundcolor','y','fontsize',10);

text(210,205,'��ֵ','backgroundcolor','y','fontsize',10);
text(210,145,'��ֵ','backgroundcolor','y','fontsize',10);
text(210,88,'��ֵ','backgroundcolor','y','fontsize',10);

word1=text(110,205,'1.5','backgroundcolor','g','fontsize',12);  %��ʾ����ֵ
word2=text(110,145,'2','backgroundcolor','g','fontsize',12);    %��ʾ���ֵ
word3=text(110,88,'2','backgroundcolor','g','fontsize',12);     %��ʾ����ֵ

L1=line([150,300],[185,185],'color','w','linewidth',8);             %������
whell1=line(195,186,'color','b','Marker','.','markersize',26);   %��Բ��
HandleWhell1=get(gcf,'CurrentAxes');                 %ͼ�εĵ�ǰ������ľ��
line([150,300],[125,125],'color','w','linewidth',8);             %�����
whell2=line(200,126,'color','b','Marker','.','markersize',26);   %��Բ��
line([150,300],[65,65],'color','w','linewidth',8);               %������
whell3=line(200,66,'color','b','Marker','.','markersize',26);    %��Բ��

LX=get(L1,'xdata');
WhellY1=get(whell1,'ydata');
WhellY2=get(whell2,'ydata');
WhellY3=get(whell3,'ydata');

hold on                                    %�����ַ����ڹ̶���λ����ʾ
axis('off');

%�����谴ť
axes('Position',[0.71,0.4,0.05,0.05]);
HandleAxes3=get(gcf,'CurrentAxes');         %ͼ�εĵ�ǰ������ľ��
axis([0,300,0,200]); % ��������ϵ��axis([XMIN XMAX YMIN YMAX])
hold on 
%  ����  һ��������
%��������½�Ϊ���������ڵ�0.71��,�±�Ϊ0.4��
%��ռ0.05,��ռ0.05��һ��С��ͳ�����
fill([0,300,300,0],[0,0,200,200],[0.7,0.7,0.7]);%������䣬��ɫ
line([0,50],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %б��1
line([0,50],[200,150],'color',[0.4,0.4,0.4],'linewidth',2); %б��2
line([300,250],[200,150],'color',[0.5,0.5,0.5],'linewidth',2); %б��3
line([300,250],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %б��4
line([50,250],[100,100],'color',[0.5,0.5,0.5],'linewidth',15); %����
axis('off');

%����а�ť
axes('Position',[0.71,0.3,0.05,0.05]);
HandleAxes4=get(gcf,'CurrentAxes');         %ͼ�εĵ�ǰ������ľ��
axis([0,300,0,200]); % ��������ϵ��axis([XMIN XMAX YMIN YMAX])
hold on 
%  ����  һ��������
%��������½�Ϊ���������ڵ�0.71��,�±�Ϊ0.4��
%��ռ0.05,��ռ0.05��һ��С��ͳ�����
fill([0,300,300,0],[0,0,200,200],[0.7,0.7,0.7]);%������䣬��ɫ
line([0,50],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %б��1
line([0,50],[200,150],'color',[0.4,0.4,0.4],'linewidth',2); %б��2
line([300,250],[200,150],'color',[0.5,0.5,0.5],'linewidth',2); %б��3
line([300,250],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %б��4
line([50,250],[100,100],'color',[0.5,0.5,0.5],'linewidth',15); %����
axis('off');

%�����ݰ�ť
axes('Position',[0.71,0.2,0.05,0.05]);
%  ����  һ��������
%��������½�Ϊ���������ڵ�0.71��,�±�Ϊ0.2��
%��ռ0.05,��ռ0.05��һ��С��ͳ�����
HandleAxes5=get(gcf,'CurrentAxes');         %ͼ�εĵ�ǰ������ľ��
axis([0,300,0,200]); % ��������ϵ��axis([XMIN XMAX YMIN YMAX])
hold on 
%  ����  һ��������
%��������½�Ϊ���������ڵ�0.71��,�±�Ϊ0.4��
%��ռ0.05,��ռ0.05��һ��С��ͳ�����
fill([0,300,300,0],[0,0,200,200],[0.7,0.7,0.7]);%������䣬��ɫ
line([0,50],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %б��1
line([0,50],[200,150],'color',[0.4,0.4,0.4],'linewidth',2); %б��2
line([300,250],[200,150],'color',[0.5,0.5,0.5],'linewidth',2); %б��3
line([300,250],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %б��4
line([50,250],[100,100],'color',[0.5,0.5,0.5],'linewidth',15); %����
axis('off');



set(gcf,'windowButtonDownFcn','MouseClickFcn');
%�������˽��������MouseClickFcn���������������ڿ��ж�


%------------    main.m        --------------------
%------------     main.m    ����   ----------------

%------------    ����.m�ļ���������ΪMouseClickFcn.m  --
%------------    MouseClickFcn.m    ��ʼ    ------------



end
end


%------------      Refresh.m-------------------
%------------     Refresh.m    ����------------
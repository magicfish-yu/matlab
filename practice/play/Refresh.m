

%------------    ����.m�ļ���������ΪRefresh.m  --------
%------------    Refresh.m    ��ʼ    ------------------



% ˢ���ĸ��Կط���ͼ��
% ���ߣ�ʯ��1604089002
% ���ڣ�2016-12-17


function Refresh()

%����ȫ�ֱ���
global  RValue           %�������ֵ
global  LValue           %��е���ֵ
global  CValue           %���ݵ���ֵ
global  den              %���ݺ����ķ���
global  num              %���ݺ����ķ�ĸ
global  G                %���ݺ���


num=1.0/(LValue*CValue); %���ݺ����ķ���
den=[1,1.0/(RValue*CValue),1.0/(LValue*CValue)];%���ݺ����ķ�ĸ
G=tf(num,den);           %���ݺ������ʽ


subplot(2,3,1);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�1��
bode(G);grid;             %������ͼ��������

subplot(2,3,2);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�2��
pzmap(num,den);           %���㼫��
rlocus(num,den);          %�����켣

subplot(2,3,4);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�4��
step(G);grid;             %����Ծ��Ӧ

subplot(2,3,5);           %ͼ�δ��ڷָ�Ϊ2��3�и��Ӵ��ڣ�ѡ�е�5��
nyquist(G);               %���ο�ʩ������
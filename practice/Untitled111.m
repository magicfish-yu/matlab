%��е��Ϊ�����ɶȻ�е��
clear L;
 
%�Ƕ�ת��
du=pi/180;     %��
radian=180/pi; %����
 
%�ؽڳ���
L1=4.324;L2=16;L3=2.35;L4=16.085;L5=14.675;
 
%% �ַ���������ģ��,
q0=0;L0=0;%���ɹؽ�
% hand = 'Rz(q1).Tz(L1).Ry(q2).Tz(L2).Ry(q3).Tz(L3).Rx(q4).Tx(L4).Ry(q5).Rz(q6).Tz(L5)';
% dhand = DHFactor(hand)
% six_hand =eval(dhand.command('hand'));
% plotopt = {'noraise', 'nowrist', 'nojaxes', 'delay',0};
% tool_dh=[1 0 0 0;
%          0 1 0 0;
%          0 0 1 0;
%          0 0 0 1];
% six_link=SerialLink(six_hand,'name','six hand','tool',tool_dh)
 
%% DH������ģ��,�ؽڽǣ�����ƫ�ƣ����˳��ȣ�����Ťת�ǣ��ؽ����ͣ�0ת����1�ƶ���
L(1) = Link( 'd',L1  ,  'a',0,   'alpha',-pi/2, 'offset',0   );
L(2) = Link( 'd',0   ,  'a',-L2, 'alpha',0    , 'offset',pi/2);
L(3) = Link( 'd',0   ,  'a',-L3, 'alpha',pi/2 , 'offset',0   );
L(4) = Link( 'd',L4  ,  'a',0 ,  'alpha',-pi/2, 'offset',0   );
L(5) = Link( 'd',0   ,  'a',0,   'alpha',pi/2 , 'offset',pi/2);
L(6) = Link( 'd',L5  ,  'a',0,   'alpha',0   ,  'offset',0   );
plotopt = {'noraise', 'nowrist', 'nojaxes', 'delay',0};
tool_char=[1 0 0 0;
           0 1 0 0;
           0 0 1 0;
           0 0 0 1];
six_link=SerialLink(L,'name','six link','tool',tool_char);
 
%��ʾ��е��
figure(1)
hold on 
six_link.plot([0 0 0 0 0 0], plotopt{:});
hold off
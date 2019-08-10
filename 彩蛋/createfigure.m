function createfigure(xdata1, zdata1, cdata1)
%CREATEFIGURE(xdata1, zdata1, cdata1)
%  XDATA1:  surface xdata
%  ZDATA1:  surface zdata
%  CDATA1:  surface cdata

%  �� MATLAB �� 25-Jul-2019 07:46:25 �Զ�����

% ���� figure
figure1 = figure('Color',[0 0 0]);
colormap(hot);

% ���� axes
axes1 = axes('Parent',figure1);
axis off
hold(axes1,'on');

% ���� surf
surf(xdata1,xdata1,zdata1,cdata1,'Parent',axes1);

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[-1 1]);
% ȡ�������е�ע���Ա����������� Y ��Χ
% ylim(axes1,[-1 1]);
% ȡ�������е�ע���Ա����������� Z ��Χ
% zlim(axes1,[-1 1]);
view(axes1,[232.5 30]);
grid(axes1,'on');
% ������������������
set(axes1,'CLim',[-40.35 26.9]);
% uicontrol ��ǰ��֧�ִ������ɣ���������ȷ�����﷨��Ӧ�� 'doc uicontrol'
% ����ʹ�� GUIDE ��Ϊ uicontrol ���ɴ��롣�й���ϸ��Ϣ�������� 'doc guide'
% uicontrol(...);

% uicontrol ��ǰ��֧�ִ������ɣ���������ȷ�����﷨��Ӧ�� 'doc uicontrol'
% ����ʹ�� GUIDE ��Ϊ uicontrol ���ɴ��롣�й���ϸ��Ϣ�������� 'doc guide'
% uicontrol(...);

% uicontrol ��ǰ��֧�ִ������ɣ���������ȷ�����﷨��Ӧ�� 'doc uicontrol'
% ����ʹ�� GUIDE ��Ϊ uicontrol ���ɴ��롣�й���ϸ��Ϣ�������� 'doc guide'
% uicontrol(...);


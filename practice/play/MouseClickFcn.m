
% �������ʵ�ֵĹ��ܺ���
% ���ߣ�ʯ��1604089002
% ���ڣ�2016-12-15


function MouseClickFcn()

%����ȫ�ֱ���
global  HandleAxes3      %������ʵ��������������
global  HandleAxes4      %���ĸ�ʵ��������������
global  HandleAxes5      %�����ʵ��������������

global  RValue           %�������ֵ
global  LValue           %�������ֵ
global  CValue           %�������ֵ

global  whell1           %��һ������������Բ��ľ��
global  HandleWhell1     %��һ������������Բ�����������
global  whell2           %�ڶ�������������Բ��ľ��
global  whell3           %����������������Բ��ľ��

global  LX               %��һ������������ֱ�ߵ�x������(x1,x2)
global  WhellY1          %��һ������������Բ���y����
global  WhellY2          %�ڶ�������������Բ���y����
global  WhellY3          %����������������Բ���y����

global  word1            %��ʾ����ֵ
global  word2            %��ʾ���ֵ
global  word3            %��ʾ����ֵ


HandleAxes=get(gcf,'CurrentAxes');      %ͼ�εĵ�ǰ������ľ��
HandleObject=get(gcf,'CurrentObject');  %ͼ�εĵ�ǰ����ľ��

CP=get(gca,'CurrentPoint');    %��ȡ��ǰ�������ڵ�ǰ�������л�ȡ�����������λ��,
%�������һ�ε����λ��CP(�����3D����ϵ��λ�ã�2x3�ľ���������ϵ������Ϊ��λ������)
%CP(1,1)��CP(1,2)��CP(1,3)  ��ά����ϵ�п����۲����Ǹ����ϵĵ��x���ꡢy���ꡢz����
%CP(2,1)��CP(2,2)��CP(2,3)  ��ά����ϵ��Զ��۲����Ǹ����ϵĵ��x���ꡢy���ꡢz����

if HandleObject~=1                    %�հ������Object=1���ɴ��޳��հ��Է�����   
    if HandleAxes==HandleAxes3
        %���������
        prompt={'���ĵ������ֵΪ��'}; %Ϊ��ʾ��Ϣ�ַ�������������������ΪԪ������
        title3='�������';             %Ϊ�����ַ�����������������������ʡ��
        lineno=1;                      %ָ������ֵ������������ʡ��
        defans={'1.5'};                %�����Ĭ��ֵ��������������������ʡ�ԣ�ΪԪ������
        addopts='on';         %ָ���Ի����Ƿ���Ըı䣬ȡon��off��ʡ��Ϊoff��ʾ���ܸı��С
        %if RValue>0.5 && RValue<5
            %defans={RValue};
            RV=inputdlg(prompt,title3,lineno,defans,addopts);
        %end
        RValue=double(vpa(cell2mat(RV)));             %��Ԫ������ת��Ϊ��ֵ
        if (RValue>=0.5)&&(RValue<=5)
            set(word1,'string',RValue);               %�ı���ʾ�ĵ���ֵ
            set(whell1,'xdata',((LX(2)-LX(1))*(RValue-0.5))/4.5+LX(1));%ʵ��Բ����ƶ�
            Refresh();                                %�����ĸ��Կط���ͼ��
        end
    end
    
    if HandleAxes==HandleAxes4
        prompt={'���ĵ�е���ֵΪ'};  %Ϊ��ʾ��Ϣ�ַ�������������������ΪԪ������
        title4='�������';            %Ϊ�����ַ�����������������������ʡ��
        lineno=1;                     %ָ������ֵ������������ʡ��
        defans={'2'};                 %�����Ĭ��ֵ��������������������ʡ�ԣ�ΪԪ������
        addopts='on';       %ָ���Ի����Ƿ���Ըı䣬ȡon��off��ʡ��Ϊoff��ʾ���ܸı��С
        LV=inputdlg(prompt,title4,lineno,defans,addopts);
        LValue=double(vpa(cell2mat(LV)));             %��Ԫ������ת��Ϊ��ֵ
        if (LValue>=0.5)&&(LValue<=5)
            set(word2,'string',LValue);               %�ı���ʾ�ĵ��ֵ
            set(whell2,'xdata',((LX(2)-LX(1))*(LValue-0.5))/4.5+LX(1));%ʵ��Բ����ƶ�
            Refresh();                                %�����ĸ��Կط���ͼ��
        end
    end
    if HandleAxes==HandleAxes5
        %���������
        prompt={'���ĵ��ݵ���ֵΪ'};  %Ϊ��ʾ��Ϣ�ַ�������������������ΪԪ������
        title5='�������';            %Ϊ�����ַ�����������������������ʡ��
        lineno=1;                     %ָ������ֵ������������ʡ��
        defans={'2'};                 %�����Ĭ��ֵ��������������������ʡ�ԣ�ΪԪ������
        addopts='on';       %ָ���Ի����Ƿ���Ըı䣬ȡon��off��ʡ��Ϊoff��ʾ���ܸı��С
        CV=inputdlg(prompt,title5,lineno,defans,addopts);
        CValue=double(vpa(cell2mat(CV)));             %��Ԫ������ת��Ϊ��ֵ
        if (CValue>=0.5)&&(CValue<=5)                 %�޶�����ֵ�÷�Χ
            set(word3,'string',CValue);               %�ı���ʾ�ĵ���ֵ
            set(whell3,'xdata',((LX(2)-LX(1))*(CValue-0.5))/4.5+LX(1));%ʵ��Բ����ƶ�
            Refresh();                                %�����ĸ��Կط���ͼ��
        end
    end
    
    if HandleAxes==HandleWhell1
        whellx=CP(1,1);                          %�����۲��ߵĵ�����x����
        whelly=CP(1,2);                          %�����۲��ߵĵ�����y����
        
        if whellx>LX(1) && whellx<LX(2)
            if whelly>(WhellY1-8) && whelly<(WhellY1+8)     %ѡ�и�����
                set(whell1,'xdata',whellx);                 %ʵ��Բ����ƶ�
                RValue=(((whellx-LX(1))*4.5)/(LX(2)-LX(1)))+0.5;
                if (RValue>=0.5)&&(RValue<=5)               %�޶�����ֵ�÷�Χ
                    set(word1,'string',RValue);             %�ı���ʾ�ĵ���ֵ
                    Refresh();                              %�����ĸ��Կط���ͼ��
                end
                return;
                %�˴�ʹ��return������else if�Ǳ���Ƕ�׹������ɶ��Ա��
            end
            if whelly>(WhellY2-8) && whelly<(WhellY2+8)     %ѡ�и�����
                set(whell2,'xdata',whellx);                 %ʵ��Բ����ƶ�
                LValue=(((whellx-LX(1))*4.5)/(LX(2)-LX(1)))+0.5;
                if (LValue>=0.5)&&(LValue<=5)               %�޶�����ֵ�÷�Χ
                    set(word2,'string',LValue);             %�ı���ʾ�ĵ��ֵ
                    Refresh();                              %�����ĸ��Կط���ͼ��
                end
                return;
            end
            if whelly>(WhellY3-8) && whelly<(WhellY3+8)     %ѡ�и�����
                set(whell3,'xdata',whellx);                 %ʵ��Բ����ƶ�
                CValue=(((whellx-LX(1))*4.5)/(LX(2)-LX(1)))+0.5;
                if (CValue>=0.5)&&(CValue<=5)               %�޶�����ֵ�÷�Χ
                    set(word3,'string',CValue);             %�ı���ʾ�ĵ���ֵ
                    Refresh();                              %�����ĸ��Կط���ͼ��
                end
                return;
            end
        end
    end
end


%------------         MouseClickFcn.m----------------
%------------     MouseClickFcn.m    ����------------


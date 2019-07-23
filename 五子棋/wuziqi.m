%Author:LeiZhen
%Date:2018-03-12
%�˳���ֻ�������壬���ж�ʤ����ϵ
clear all;
clc
%������ɫ
Color_QiPanBack=[135,206,255];
Color_ChessLine=[100,100,100];
%��ʤ������
Num_Victory=5;
Dpixel=33;
NumCell=14;%���̸���л�����
Wid_edge=18;
[M_QiPan,xcol_ChessLine,yrow_ChessLine]=QiPan(NumCell,Dpixel,Wid_edge,Color_QiPanBack,Color_ChessLine);
imshow(M_QiPan);
set (gcf,'Position',[600,45,625,625]);
set (gca,'Position',[0,0,1,1]);
hold on,
%��뾶
radius_Chess=15;
M_LuoZi=zeros(NumCell+1,NumCell+1,2);
VictoryB=0;
VictoryW=0;
StateB=1;
StateW=2;
NumChess=0;
for i=1:(NumCell+1)^2
    [x_col_Chess, y_row_Chess]=ginput_pointer(1);
    %��þ�������������������������,����֤������������������
    if x_col_Chess<max(xcol_ChessLine)+Dpixel/2&&x_col_Chess>min(xcol_ChessLine)-Dpixel/2&&y_row_Chess<max(yrow_ChessLine)+Dpixel/2&&y_row_Chess>min(yrow_ChessLine)-Dpixel/2
        for x_i=xcol_ChessLine
            if abs(x_col_Chess-x_i)<Dpixel/2;
                x_col_Chess=x_i;
            end
        end
        for y_i=yrow_ChessLine
            if abs(y_row_Chess-y_i)<Dpixel/2;
                y_row_Chess=y_i;
            end
        end
    %���������������������򣩻���
    else
        [x_col_LuoZi_old,y_row_LuoZi_old]=find(M_LuoZi(:,:,2)==max(max(M_LuoZi(:,:,2))));
        x_col_Chess_old=(x_col_LuoZi_old-1)*Dpixel+Wid_edge+1;
        y_row_Chess_old=(y_row_LuoZi_old-1)*Dpixel+Wid_edge+1;
        if NumChess>=1
            M_QiPan=Chess(M_QiPan,x_col_Chess_old,y_row_Chess_old,radius_Chess,3,Wid_edge,Dpixel,Color_QiPanBack,Color_ChessLine);
            imshow(M_QiPan);
            NumChess=NumChess-1;
            M_LuoZi(x_col_LuoZi_old,y_row_LuoZi_old,1)=0;
            M_LuoZi(x_col_LuoZi_old,y_row_LuoZi_old,2)=0;
        end
        continue;
    end
    %���Ӳ���ֹ�ظ���ͬһ�����������
    x_col_LuoZi=(x_col_Chess-Wid_edge-1)/Dpixel+1;
    y_row_LuoZi=(y_row_Chess-Wid_edge-1)/Dpixel+1;
    if M_LuoZi(x_col_LuoZi,y_row_LuoZi,1)==0
        NumChess=NumChess+1;
        M_LuoZi(x_col_LuoZi,y_row_LuoZi,2)=NumChess;
        if mod(NumChess,2)==1
            M_QiPan=Chess(M_QiPan,x_col_Chess,y_row_Chess,radius_Chess,1,Wid_edge,Dpixel,Color_QiPanBack,Color_ChessLine);
            imshow(M_QiPan);
            M_LuoZi(x_col_LuoZi,y_row_LuoZi,1)=StateB; %����Ϊ����
            VictoryB=Victory_Judge(M_LuoZi,x_col_LuoZi,y_row_LuoZi,StateB);
        elseif mod(NumChess,2)==0
            M_QiPan=Chess(M_QiPan,x_col_Chess,y_row_Chess,radius_Chess,2,Wid_edge,Dpixel,Color_QiPanBack,Color_ChessLine);
            imshow(M_QiPan);
            M_LuoZi(x_col_LuoZi,y_row_LuoZi,1)=StateW; %����Ϊ����
            VictoryW=Victory_Judge(M_LuoZi,x_col_LuoZi,y_row_LuoZi,StateW);
        end
    end
    %��ʾ��ʤ��Ϣ
    if VictoryB==1
        %��ͨ�Ի���
        h=dialog('name','�Ծֽ���','position',[500 350 250 100]);
        uicontrol('parent',h,'style','text','string','�����ʤ��','position',[35 35 200 50],'fontsize',30);
        uicontrol('parent',h,'style','pushbutton','position',[150 5 80 30],'fontsize',20,'string','ȷ��','callback','delete(gcbf)');
        break;
    elseif VictoryW==1
        %��ͨ�Ի���
        h=dialog('name','�Ծֽ���','position',[500 350 250 100]);
        uicontrol('parent',h,'style','text','string','�����ʤ��','position',[35 35 200 50],'fontsize',30);
        uicontrol('parent',h,'style','pushbutton','position',[150 5 80 30],'fontsize',20,'string','ȷ��','callback','delete(gcbf)');
        break;
    end
end

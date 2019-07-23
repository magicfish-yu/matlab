%Author:LeiZhen
%Date:2018-03-12
function M_QiPan=Chess(M_QiPan,x_col_Chess,y_row_Chess,radius_Chess,BorW,Wid_edge,Dpixel,Color_QiPanBack,Color_ChessLine)
%�˳���������߻���
%M_QiPanΪ���̾���
%xcol_ChessLineΪ��������
%yrow_ChessLineΪ��������
%radius_ChessΪ������ذ뾶
%BorWΪ����ѡ��1���壬2���壬3����
%Wid_edgeΪ���̾����е����̱�Ե�����ؿ��
%DpixelΪ���̾����е����������߼�����ؼ��
%Color_QiPanBackΪ���̱�����ɫ
%Color_ChessLineΪ�����ߵ���ɫ
Color_BChess=[54,54,54];
Color_WChess=[255,240,245];
[Wid,Hei,Deep]=size(M_QiPan);
for i=x_col_Chess-radius_Chess:x_col_Chess+radius_Chess
    for j=y_row_Chess-radius_Chess:y_row_Chess+radius_Chess
        if (i-x_col_Chess)^2+(j-y_row_Chess)^2<=radius_Chess^2
            if BorW==1%����
                M_QiPan(j,i,:)=Color_BChess;
            elseif BorW==2%����
                M_QiPan(j,i,:)=Color_WChess;
            elseif BorW==3%����
                M_QiPan(j,i,:)=Color_QiPanBack;
                %���ڲ������̱�Ե������
                if i==x_col_Chess||j==y_row_Chess
                    M_QiPan(j,i,:)=Color_ChessLine;
                end
                %������Ƿ�ΪСԲ��
                if ((i-x_col_Chess)^2+(j-y_row_Chess)^2<5^2)&&...
                    (x_col_Chess==Wid_edge+1+Dpixel*3||x_col_Chess==floor(Wid/2)+1||x_col_Chess==Wid-Wid_edge-Dpixel*3)&&...
                    (y_row_Chess==Wid_edge+1+Dpixel*3||y_row_Chess==floor(Wid/2)+1||y_row_Chess==Wid-Wid_edge-Dpixel*3)            
                    M_QiPan(j,i,:)=Color_ChessLine;
                end
                %�������̱�Ե������
                if x_col_Chess==Wid_edge+1&&i<x_col_Chess
                    M_QiPan(j,i,:)=Color_QiPanBack;
                elseif x_col_Chess==Wid-Wid_edge&&i>x_col_Chess
                    M_QiPan(j,i,:)=Color_QiPanBack;
                end
                if y_row_Chess==Wid_edge+1&&j<y_row_Chess
                    M_QiPan(j,i,:)=Color_QiPanBack;
                elseif y_row_Chess==Wid-Wid_edge&&j>y_row_Chess
                    M_QiPan(j,i,:)=Color_QiPanBack;
                end
            end
        end
    end
end
end
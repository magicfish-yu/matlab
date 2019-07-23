%Author:LeiZhen
%Date:2018-03-12
function [M_QiPan, xcol_ChessLine,yrow_ChessLine]=QiPan(NumCell, Dpixel, Wid_edge,Color_QiPanBack,Color_ChessLine)
%�˳���Ϊ���������̵ĳ���
%NumCellΪ���̸���
%DpixelΪ���������߼�����ؼ��
%Wid_edgeΪ���̱�Ե�����ؿ��
%Color_QiPanBackΪ���̱�����ɫ
%Color_ChessLineΪ�����ߵ���ɫ
%M_QiPanΪ���̾���
%xcol_ChessLineΪ��������
%yrow_ChessLineΪ��������
NumSum=1+Dpixel*NumCell+Wid_edge*2;
xcol_ChessLine=Wid_edge+1:Dpixel:NumSum-Wid_edge;%��
yrow_ChessLine=Wid_edge+1:Dpixel:NumSum-Wid_edge;%��
M_QiPan=uint8(ones(NumSum,NumSum,3));
M_QiPan(:,:,1)=M_QiPan(:,:,1)*Color_QiPanBack(1);
M_QiPan(:,:,2)=M_QiPan(:,:,2)*Color_QiPanBack(2);
M_QiPan(:,:,3)=M_QiPan(:,:,3)*Color_QiPanBack(3);
%��������
for i=xcol_ChessLine
    M_QiPan(i,Wid_edge+1:NumSum-Wid_edge,:)=ones(NumSum-2*Wid_edge,1)*Color_ChessLine;
end
for j=yrow_ChessLine
    M_QiPan(Wid_edge+1:NumSum-Wid_edge,j,:)=ones(NumSum-2*Wid_edge,1)*Color_ChessLine;
end
%��9��СԲ��
radius_Dot=5;
P1=Wid_edge+1+Dpixel*3:Dpixel*(NumCell/2-3):Wid_edge+1+Dpixel*(NumCell-3);
for ti=P1
    for tj=P1
        for Num=ti-radius_Dot:ti+radius_Dot;
            for j=tj-radius_Dot:tj+radius_Dot;
                if (Num-ti)^2+(j-tj)^2<radius_Dot^2
                    M_QiPan(Num,j,:)=Color_ChessLine;
                end
            end
        end
    end
end
end

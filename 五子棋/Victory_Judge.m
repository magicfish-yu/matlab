%Author:LeiZhen
%Date:2018-03-12
function Victory_flag=Victory_Judge(M_LuoZi,x_col_LuoZi,y_row_LuoZi,State)
%��һ���Ƿ��ʤ���жϺ���
%M_LuoZiΪ�����ľ���
%x_col_LuoZiΪ��������
%y_row_LuoZi��������
%StateΪM_LuoZi����ĳ�������״̬�����壨1������壨2�������壨0��,�Լ�ÿ��������
%NumCellΪ���̸���
%Victory_flagΪʤ����־
NumCell=length(M_LuoZi)-1;
Victory_flag=0;
for i=1:NumCell-3
    if M_LuoZi(i,y_row_LuoZi,1)==State&&M_LuoZi(i+1,y_row_LuoZi,1)==State&&M_LuoZi(i+2,y_row_LuoZi,1)==State&&M_LuoZi(i+3,y_row_LuoZi,1)==State&&M_LuoZi(i+4,y_row_LuoZi,1)==State
        Victory_flag=1;
        break;
    end
    if M_LuoZi(x_col_LuoZi,i,1)==State&&M_LuoZi(x_col_LuoZi,i+1,1)==State&&M_LuoZi(x_col_LuoZi,i+2,1)==State&&M_LuoZi(x_col_LuoZi,i+3,1)==State&&M_LuoZi(x_col_LuoZi,i+4,1)==State
        Victory_flag=1;
        break;
    end
    if abs(x_col_LuoZi-y_row_LuoZi)+i<=NumCell-3
        if x_col_LuoZi>=y_row_LuoZi
            if M_LuoZi(abs(x_col_LuoZi-y_row_LuoZi)+i,i,1)==State&&M_LuoZi(abs(x_col_LuoZi-y_row_LuoZi)+i+1,i+1,1)==State&&M_LuoZi(abs(x_col_LuoZi-y_row_LuoZi)+i+2,i+2,1)==State&&M_LuoZi(abs(x_col_LuoZi-y_row_LuoZi)+i+3,i+3,1)==State&&M_LuoZi(abs(x_col_LuoZi-y_row_LuoZi)+i+4,i+4,1)==State
                Victory_flag=1;
                break;
            end
        elseif x_col_LuoZi<y_row_LuoZi
            if M_LuoZi(i,abs(x_col_LuoZi-y_row_LuoZi)+i,1)==State&&M_LuoZi(i+1,abs(x_col_LuoZi-y_row_LuoZi)+i+1,1)==State&&M_LuoZi(i+2,abs(x_col_LuoZi-y_row_LuoZi)+i+2,1)==State&&M_LuoZi(i+3,abs(x_col_LuoZi-y_row_LuoZi)+i+3,1)==State&&M_LuoZi(i+4,abs(x_col_LuoZi-y_row_LuoZi)+i+4,1)==State
                Victory_flag=1;
                break;
            end
        end
    end
    if y_row_LuoZi+x_col_LuoZi<=NumCell+2&&y_row_LuoZi+x_col_LuoZi-i>=5
        if M_LuoZi(y_row_LuoZi+x_col_LuoZi-i,i,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-i-1,i+1,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-i-2,i+2,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-i-3,i+3,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-i-4,i+4,1)==State
            Victory_flag=1;
            break;
        end
    elseif y_row_LuoZi+x_col_LuoZi>NumCell+2&&y_row_LuoZi+x_col_LuoZi+i<=NumCell*2-1
        offset=NumCell+2;
        if M_LuoZi(y_row_LuoZi+x_col_LuoZi-offset+i,offset-i,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-offset+i+1,offset-i-1,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-offset+i+2,offset-i-2,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-offset+i+3,offset-i-3,1)==State&&M_LuoZi(y_row_LuoZi+x_col_LuoZi-offset+i+4,offset-i-4,1)==State
            Victory_flag=1;
            break;
        end
    end
end
end

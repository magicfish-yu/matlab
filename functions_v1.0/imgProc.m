% ͼ����
% !!!! ����׺���ļ������ļ����ϼ� ' ' , ������׺�Ĳ�Ҫ�ӣ��� 'MazeMap.jpg', ans

%%%% type %%%%
% bw:��ֵ������
% gr:�Ҷȴ���
% ud:���·�ת
% lr:���ҷ�ת
%%%%%%%%%%%%%%

%%%% show %%%%
% show=�κ�ֵ����ʾͼ��
% ���������������������ʾͼ��
%%%%%%%%%%%%%%

function [data] = imgProc(raw_data,type,show)
show=1;
if nargin<3
    show=0;
end

if type == 'bw' 
    m=imread(raw_data);
    level=graythresh(m);%ʹ�������䷽�ȷ����ֵ
    data=im2bw(m,level);
end

if type=='gr'
    m=imread(raw_data);
    data=rgb2gray(m);
end

if type=='ud'
    [m n s]=size(raw_data);
    for ii=1:s
        data(:,:,ii)=flipud(raw_data(:,:,ii));%���·�ת
    end
end

if type=='lr'
    [m n s]=size(raw_data);
    for ii=1:s
        data(:,:,ii)=fliplr(raw_data(:,:,ii));
    end
end

if show==1
    subplot(121);
    imshow(m);
    subplot(122);
    imshow(data);
end

end
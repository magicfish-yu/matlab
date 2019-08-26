% 图像处理
% !!!! 带后缀的文件请在文件名上加 ' ' , 不带后缀的不要加，如 'MazeMap.jpg', ans

%%%% type %%%%
% bw:二值化处理
% gr:灰度处理
% ud:上下翻转
% lr:左右翻转
%%%%%%%%%%%%%%

%%%% show %%%%
% show=任何值，显示图像
% 不输入第三个参数，不显示图像
%%%%%%%%%%%%%%

function [data] = imgProc(raw_data,type,show)
show=1;
if nargin<3
    show=0;
end

if type == 'bw' 
    m=imread(raw_data);
    level=graythresh(m);%使用最大类间方差法确定阈值
    data=im2bw(m,level);
end

if type=='gr'
    m=imread(raw_data);
    data=rgb2gray(m);
end

if type=='ud'
    [m n s]=size(raw_data);
    for ii=1:s
        data(:,:,ii)=flipud(raw_data(:,:,ii));%上下反转
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
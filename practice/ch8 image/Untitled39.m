I=imread('rice.png');
level=graythresh(I);
BW=im2bw(I,level);
% imshow(BW)
SW=bwselect(BW);
imshow(SW)
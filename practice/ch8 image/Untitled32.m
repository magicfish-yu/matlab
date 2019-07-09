I=imread('rice.png');
level=graythresh(I);
bw=im2bw(I,level);
imshow(bw)
I=imread('rice.png');
BG=imopen(I,strel('disk',15));
imshow(BG);
I2=imsubtract(I,BG);
imshow(I2);
level=graythresh(I2);
bw2=im2bw(I2,level);
imshow(bw2)
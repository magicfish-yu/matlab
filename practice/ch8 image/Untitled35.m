I=imread('rice.png');
BG=imopen(I,strel('disk',15));
I2=imsubtract(I,BG);
level=graythresh(I2);
BW=im2bw(I2,level);
[labeled, numObjects]=bwlabel(BW,8);
rgb_label=label2rgb(labeled);
imshow(rgb_label);
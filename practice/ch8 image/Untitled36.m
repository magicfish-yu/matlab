clear
I=imread('rice.png');
BG=imopen(I,strel('disk',15));
I2=imsubtract(I,BG);
level=graythresh(I2);
BW=im2bw(I2,level);
[labeled, numObjects]=bwlabel(BW,8);
count=zeros(1,numObjects);
I3=zeros(size(labeled,1),size(labeled,2),3);
for i=1:size(labeled,1)
    for j=1:size(labeled,2)
        for k=1:numObjects
          if labeled(i,j)==k
             count(k)=count(k)+1;
            I3(i,j,1)=255;
            I3(i,j,2)=0;
            I3(i,j,3)=0;
          end
        end
    end
end
% count
subplot(1,2,1);
histogram(count)
subplot(1,2,2);
imshow(I3);
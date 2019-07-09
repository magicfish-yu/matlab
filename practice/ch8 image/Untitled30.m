clear
count=0
I=zeros(1920,1080);
for i=1:1080
    for j=1:1920
%         for k=1:3
          I=randn(255);
%         count=count+1;
%         end
    end
end
% imshow(I)
imwrite(I,'haha.jpg')
I=imread('pout.tif');
 imhist(I);
min=255;    max=0;
count_min=600;  count_max=600;
for i=1:size(I,1)
    for j=1:size(I,2)
        if I(i,j)<min
            min=I(i,j);
        end
        if I(i,j)>max
            max=I(i,j);
        end
    end
end
% min
% max
for i=1:size(I,1)
    for j=size(I,2)
       if I(i,j)==min
           J(i,j)=0;
       end
       if I(i,j)==max
           J(i,j)=255; 
       else
           J(i,j)=I(i,j)-min*20;
       end
    end
end
subplot(1,2,1);
imshow(J);
subplot(1,2,2);
imhist(J);
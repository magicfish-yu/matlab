I=imread('rice.png');
[R C]=size(I);
for i=1:R
    for j=1:C
        if I(i,j)>=160
            I(i,j)=255;
        elseif I(i,j)<160
                I(i,j)=0;
        end
    end
end
imshow(I)

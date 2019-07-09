clear
I=imread('pout.tif');
[R C]=size(I);
theta=30;
trans=[cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];
for i=1:R
    for j=1:C
        temp=[i; j; 1];
        temp=trans*temp;
        x=round(temp(1,1));
        y=round(temp(2,1));
        if x<=0 
            x=1;
        elseif y<=0
            y=1;
        end
        J(x,y)=I(i,j);
    end
end
imshow(J)
clear
I=imread('pout.tif')
[R C]=size(I);
tx=50;   ty=90;
TRANS=[1 0 tx; 0 1 ty; 0 0 1];
for i=1:R
    for j=1:C
        temp=[i;j;1];
        temp=TRANS*temp;
        x=temp(1,1);
        y=temp(2,1);
        J(x,y)=I(i,j);
%         if (x<=R)&&(y<=C)&&(x>=1)&&(y>=1)
%             J(x,y)=I(i,j);
%         end
    end
end
imshow(uint8(J))
     
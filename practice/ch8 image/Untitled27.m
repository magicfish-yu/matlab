I=imread('pout.tif');
[R C]=size(I);
hx=2;   hy=2;
trans=[1 hx 0; hy 1 0; 0 0 1];
for i=1:R
    for j=1:C
        temp=[i;j;1];
%         temp=trans*temp;
        temp=(temp')*trans;
        x=temp(1,1);
        y=temp(1,2);
        J(x,y)=I(i,j);
    end
end
imshow(J)
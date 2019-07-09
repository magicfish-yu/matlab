clear
I=imread('pout.tif');
[R C]=size(I);
sx=2;  sy=2;
TRANS=[sx 0 0 ; 0 sy 0; 0 0 1];
% J=zeros(R*sx,C*sy);
for i=1:R
    for j=1:C
        temp=[i j 1];
        temp=temp*TRANS;
        x=temp(1,1);
        y=temp(1,2);
        J(x,y)=I(i,j);
    end
end
for i =1:size(J,1)
    for j=1:size(J,2)
        if (J(i,j)==0) && (i>1) && (j>1)
            J(i,j)= J(i-1,j-1);
        end
    end
end

imshow(J)
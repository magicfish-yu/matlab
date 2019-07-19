function [X D] = CPNGauss(A,b)
format long
D=det(A);
Ab=[A b];
[R C]=size(Ab);
X=zeros(1,R);
temp=0;
for jj=1:(C-1)
    for ii=(jj+1):R
        m=Ab(ii,jj)./Ab(jj,jj);
        if m~=0
            Ab(ii,:)=Ab(jj,:).*(-m)+Ab(ii,:);
        end  
    end
    Ab
end
b=Ab(:,C);
for ii=R:-1:1
    if ii==R
        X(ii)=b(ii)./Ab(ii,ii);
    else
        for jj=(ii+1):(C-1)
             temp=X(jj).*Ab(ii,jj)+temp;
        end
        X(ii)=(b(ii)-temp)./Ab(ii,ii);
        temp=0;
    end
end
X=X';    
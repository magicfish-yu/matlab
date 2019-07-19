clear
format long
A=[10 -7 0 1; -3 2.099999 6 2; 5 -1 5 -1; 2 1 0 2];
b=[8;5.900001;5;1];
% A=[1 2 3;4 5 6;7 8 9];
% b=[6;15;24];
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
X'

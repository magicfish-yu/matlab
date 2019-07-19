clear
k=6
A=zeros(k,k)
for m=1:k
    for n=1:k
        A(m,n)=1/(m+n-1);
    end
end
format rat
A
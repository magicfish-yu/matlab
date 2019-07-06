tic
a = [0 -1 4; 
    9 -14 25;
    -34 49 64];
for i = 1:size(a,1)
    for j = 1:size(a,2)
       b(i,j)=abs(a(i,j))
    end
end
toc

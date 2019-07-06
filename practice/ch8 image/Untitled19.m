I=imread('rice.png');
J=immultiply(I,2);
count=0;
count_J=0
for i=1:size(I,1)
    for j=1:size(I,2)
        if I(i,j) == 255
            count=count+1;
        end
    end
end
for i=1:size(I,1)
    for j=1:size(I,2)
        if J(i,j) == 255
            count_J=count_J+1;
        end
    end
end
count
count_J
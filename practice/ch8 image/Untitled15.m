for i=1:size(I,1)
    for j=1:size(I,2)
        I(i,j)=255-I(i,j);
    end
end
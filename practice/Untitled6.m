tic
A = zeros(20000,20000);
for ii = 1:size(A,1)
    for jj = 1:size(A,2)
        A(ii,jj) = ii+jj;
    end
end
toc

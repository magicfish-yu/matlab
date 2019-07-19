function [H] = Hilbert(n)
format rat
for ii=1:n
    for jj=1:n
        H(ii,jj)=1./(ii+jj-1);
    end
end
end


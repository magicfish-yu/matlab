clear, close all
I = imread('pout.tif'); %rea
subplot(1,2,1); imshow(I); %show
for i=1:size(I,1)/2
    for j=1:size(I,2)/2
        I(i,j)=255-I(i,j);
    end
end
% subplot(1,2,2); imshow(J);
for i=floor(size(I,1)/2):size(I,1)
    for j=1:size(I,2)
        I(i,j)=200-I(i,j);
    end
end
for i=1:floor(size(I,1)/2)
    for j=size(I,2)/2:size(I,2)
        I(i,j)=150-I(i,j);
    end
end
for i=floor(size(I,1)/2):size(I,1)
    for j=size(I,2)/2:size(I,2)
        I(i,j)=100-I(i,j);
    end
end
subplot(1,2,2); imshow(I);
% for i=1:size(I,1)/2
%     for j=1:size(I,2)/2
%         I(i,j)=255-I(i,j);
%     end
% end
% subplot(1,2,2); imshow(I);
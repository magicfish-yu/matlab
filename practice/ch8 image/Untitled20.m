I=imread('pout.tif');
subplot(2,3,1); imshow(I);
subplot(2,3,4); imhist(I);

J=immultiply(I,1.5);
subplot(2,3,2); imshow(J);
subplot(2,3,5); imhist(J);

K=histeq(I); 
subplot(2,3,3); imshow(K);
subplot(2,3,6); imhist(K);
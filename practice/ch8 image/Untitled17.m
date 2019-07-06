I=imread('rice.png');   J=imread('cameraman.tif');
K=imadd(I,J);
subplot(1,3,1); imshow(I);
subplot(1,3,2); imshow(J);
subplot(1,3,3);
imshow(K)
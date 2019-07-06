I=imread('rice.png');
subplot(1,2,1); imshow(I);
J=immultiply(I,0.2);
subplot(1,2,2); imshow(J);
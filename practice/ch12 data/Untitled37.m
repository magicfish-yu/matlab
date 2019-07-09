x=1:14;
y=[1 3 5 5 5 5 7 9 9 9 10 13 14 15];
subplot(1,3,1); bar(x,y); xlim([0 15]);
subplot(1,3,2); area(x,y);
subplot(1,3,3); stem(x,y);
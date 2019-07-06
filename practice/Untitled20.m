% x=[1 2 5 4 8]; y=[x;1:5];
x=randn(1,100);y=randn(1,100);
subplot(1,3,1); bar(x); title('a bargraph of vector x');
subplot(1,3,2); bar(y); title('a bargraph of vector y');
subplot(1,3,3); bar3(y); title('a 3d bargraph');
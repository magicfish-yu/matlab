y=randn(1,1000);
subplot(2,1,1);
hist(y,3);
title('bins=10');
subplot(2,1,2);
hist(y,500000);
title('bins=500');
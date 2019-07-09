v=[0.025 0.035 0.050 0.060 0.08];   c=[20 30 40 50 60];
fit=polyfit(c,v,1);
cfit=c(1):0.1:c(end);   vfit=cfit*fit(1)+fit(2);
plot(c,v,'ro',cfit,vfit)
fit(1)
fit(2)
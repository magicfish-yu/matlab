clear
format rat
for ii=2:6
    H{ii}=Hilbert(ii);
end
for ii=2:6
    C(ii)=cond(H{ii},inf);
end
x=2:6;
plot(x,C(x),'LineWidth',4)
set(gca,'XTick',2:6)
set(gca,'XTickLabel',[2 3 4 5 6])
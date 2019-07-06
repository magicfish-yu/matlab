t=1:0.01:2;
f=t.^2;
g=sin(2*pi.*t);
hold
h = plot(t,f,'k-',t,g,'or');
set(h(1),'LineWidth',7);
set(h(2),'Color','magenta','MarkerFaceColor','red','MarkerEdgeColor','cyan');
xlabel('Time(ms)');
ylabel('f(t)');
ht = title('Mini Assignment#1');
set(ht,'FontSize',15);
legend('t^2','sin(2\pit)');
hold
% legend('t^2');
% legend('sin(2)');
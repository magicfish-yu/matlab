turns=40*pi;
t=linspace(0,turns,4000);
x=cos(t).*(turns-t)./turns;
y=sin(t).*(turns-t)./turns;
z=t./turns;
h=plot3(x,y,z,'LineWidth',2,'Color',[hex2dec('00')/255 hex2dec('cc')/255 hex2dec('00')/255]);grid on

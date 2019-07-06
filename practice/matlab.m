for i=1:0.1:1000
    x=linspace(0,100,1001);
    plot(x,sin(x+i));
    print(gcf,'-deps',strcat('plot',num2str(i),'.ps'));
end
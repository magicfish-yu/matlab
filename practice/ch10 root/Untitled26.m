f=@(x,y) [2*x-y-exp(-x),-x+2*y-exp(-y)]
fsolve(f,[-5  5]);
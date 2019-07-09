f=@(x) x.^2
options=optimset('MaxIter',1e4,'TolFun',1e-10);
fzero(f,0.1,options)
fsolve(f,0.1,options)
function str = f2c()
while 1
    f = input('the f is ');
    if isempty(f) == 1
        break;
    else
        disp('the c is ');
        str=(f-32)/1.8;
        disp(str);
       
  
    end
end

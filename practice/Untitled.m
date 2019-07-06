s1=input('input a string: ');
length = size(s1,2);
for i = 1:length
    s2(i) = s1(length-i+1);
end
char(s2)

length=size(student,2);
for i=1:length
    if strcmp(student(i).name,'Ann Lane')
        disp(student(i).grade(1,3));
    end
end
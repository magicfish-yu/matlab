
% 点击鼠标后实现的功能函数
% 作者：石坚1604089002
% 日期：2016-12-15


function MouseClickFcn()

%声明全局变量
global  HandleAxes3      %第三个实体对象的坐标轴句柄
global  HandleAxes4      %第四个实体对象的坐标轴句柄
global  HandleAxes5      %第五个实体对象的坐标轴句柄

global  RValue           %电阻的阻值
global  LValue           %电阻的阻值
global  CValue           %电阻的阻值

global  whell1           %第一个参数滚动条圆点的句柄
global  HandleWhell1     %第一个参数滚动条圆点的坐标轴句柄
global  whell2           %第二个参数滚动条圆点的句柄
global  whell3           %第三个参数滚动条圆点的句柄

global  LX               %第一个参数滚动条直线的x轴坐标(x1,x2)
global  WhellY1          %第一个参数滚动条圆点的y坐标
global  WhellY2          %第二个参数滚动条圆点的y坐标
global  WhellY3          %第三个参数滚动条圆点的y坐标

global  word1            %显示电阻值
global  word2            %显示电感值
global  word3            %显示电容值


HandleAxes=get(gcf,'CurrentAxes');      %图形的当前坐标轴的句柄
HandleObject=get(gcf,'CurrentObject');  %图形的当前对象的句柄

CP=get(gca,'CurrentPoint');    %获取当前轴句柄，在当前坐标轴中获取鼠标点击的坐标位置,
%返回最近一次点击的位置CP(鼠标点击3D坐标系的位置，2x3的矩阵，以坐标系的数据为单位的坐标)
%CP(1,1)、CP(1,2)、CP(1,3)  三维坐标系中靠近观察者那个面上的点的x坐标、y坐标、z坐标
%CP(2,1)、CP(2,2)、CP(2,3)  三维坐标系中远离观察者那个面上的点的x坐标、y坐标、z坐标

if HandleObject~=1                    %空白区域的Object=1，由此剔除空白以防干扰   
    if HandleAxes==HandleAxes3
        %创建输入框
        prompt={'更改电阻的阻值为：'}; %为提示信息字符串，用引号括起来，为元胞数组
        title3='输入参数';             %为标题字符串，用引号括起来，可以省略
        lineno=1;                      %指定输入值的行数，可以省略
        defans={'1.5'};                %输入的默认值，用引号括起来，可以省略，为元胞数组
        addopts='on';         %指定对话框是否可以改变，取on或off，省略为off表示不能改变大小
        %if RValue>0.5 && RValue<5
            %defans={RValue};
            RV=inputdlg(prompt,title3,lineno,defans,addopts);
        %end
        RValue=double(vpa(cell2mat(RV)));             %把元胞数组转换为数值
        if (RValue>=0.5)&&(RValue<=5)
            set(word1,'string',RValue);               %改变显示的电阻值
            set(whell1,'xdata',((LX(2)-LX(1))*(RValue-0.5))/4.5+LX(1));%实现圆点的移动
            Refresh();                                %更新四个自控分析图形
        end
    end
    
    if HandleAxes==HandleAxes4
        prompt={'更改电感的阻值为'};  %为提示信息字符串，用引号括起来，为元胞数组
        title4='输入参数';            %为标题字符串，用引号括起来，可以省略
        lineno=1;                     %指定输入值的行数，可以省略
        defans={'2'};                 %输入的默认值，用引号括起来，可以省略，为元胞数组
        addopts='on';       %指定对话框是否可以改变，取on或off，省略为off表示不能改变大小
        LV=inputdlg(prompt,title4,lineno,defans,addopts);
        LValue=double(vpa(cell2mat(LV)));             %把元胞数组转换为数值
        if (LValue>=0.5)&&(LValue<=5)
            set(word2,'string',LValue);               %改变显示的电感值
            set(whell2,'xdata',((LX(2)-LX(1))*(LValue-0.5))/4.5+LX(1));%实现圆点的移动
            Refresh();                                %更新四个自控分析图形
        end
    end
    if HandleAxes==HandleAxes5
        %创建输入框
        prompt={'更改电容的阻值为'};  %为提示信息字符串，用引号括起来，为元胞数组
        title5='输入参数';            %为标题字符串，用引号括起来，可以省略
        lineno=1;                     %指定输入值的行数，可以省略
        defans={'2'};                 %输入的默认值，用引号括起来，可以省略，为元胞数组
        addopts='on';       %指定对话框是否可以改变，取on或off，省略为off表示不能改变大小
        CV=inputdlg(prompt,title5,lineno,defans,addopts);
        CValue=double(vpa(cell2mat(CV)));             %把元胞数组转换为数值
        if (CValue>=0.5)&&(CValue<=5)                 %限定输入值得范围
            set(word3,'string',CValue);               %改变显示的电容值
            set(whell3,'xdata',((LX(2)-LX(1))*(CValue-0.5))/4.5+LX(1));%实现圆点的移动
            Refresh();                                %更新四个自控分析图形
        end
    end
    
    if HandleAxes==HandleWhell1
        whellx=CP(1,1);                          %靠近观察者的点击点的x坐标
        whelly=CP(1,2);                          %靠近观察者的点击点的y坐标
        
        if whellx>LX(1) && whellx<LX(2)
            if whelly>(WhellY1-8) && whelly<(WhellY1+8)     %选中该区域
                set(whell1,'xdata',whellx);                 %实现圆点的移动
                RValue=(((whellx-LX(1))*4.5)/(LX(2)-LX(1)))+0.5;
                if (RValue>=0.5)&&(RValue<=5)               %限定输入值得范围
                    set(word1,'string',RValue);             %改变显示的电阻值
                    Refresh();                              %更新四个自控分析图形
                end
                return;
                %此处使用return而不用else if是避免嵌套过深、程序可读性变差
            end
            if whelly>(WhellY2-8) && whelly<(WhellY2+8)     %选中该区域
                set(whell2,'xdata',whellx);                 %实现圆点的移动
                LValue=(((whellx-LX(1))*4.5)/(LX(2)-LX(1)))+0.5;
                if (LValue>=0.5)&&(LValue<=5)               %限定输入值得范围
                    set(word2,'string',LValue);             %改变显示的电感值
                    Refresh();                              %更新四个自控分析图形
                end
                return;
            end
            if whelly>(WhellY3-8) && whelly<(WhellY3+8)     %选中该区域
                set(whell3,'xdata',whellx);                 %实现圆点的移动
                CValue=(((whellx-LX(1))*4.5)/(LX(2)-LX(1)))+0.5;
                if (CValue>=0.5)&&(CValue<=5)               %限定输入值得范围
                    set(word3,'string',CValue);             %改变显示的电容值
                    Refresh();                              %更新四个自控分析图形
                end
                return;
            end
        end
    end
end


%------------         MouseClickFcn.m----------------
%------------     MouseClickFcn.m    结束------------


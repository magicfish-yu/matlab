function TextBall
% 旋转的文字球：滑动鼠标，控制文字球的旋转方向
% CopyRight：xiezhh（谢中华）
% 写于2012.11.11（光棍节）

t1 = linspace(0,2*pi,21);
t1(end) = [];
t2 = linspace(-pi/2,pi/2,20);
[Theta, Pho] = meshgrid(t1,t2);
x = cos(Pho).*cos(Theta);
y = cos(Pho).*sin(Theta);
z = sin(Pho);
[data,str] = xlsread('百家姓.xls');
str = str';
str = str(1:400);
ColorMat = [jet(100);gray(100)];
id = randi(200,1,400);
surf([x,x(:,1)]/8,[y,y(:,1)]/8,[z,z(:,1)]/8,'FaceColor','r','EdgeColor','None');
camlight;
hold on;
arrayfun(@(i)text(x(i),y(i),z(i),str{i},'Color',ColorMat(id(i),:)),1:400);
axis([-1.1,1.1,-1.1,1.1,-1.1,1.1]);
axis vis3d off;
xyz1 = [-7,-7,7];  % 当前视点
set(gca,'CameraPositionMode','manual','CameraPosition',xyz1);
set(gcf,'WindowButtonMotionFcn',@MyWindowButtonMotionFcn);
[az,el,R] = cart2sph(xyz1(1),xyz1(2),xyz1(3));
setappdata(gcf,'xyz_old',xyz1);
set(gca,'Interruptible','off');
set(gcf,'Interruptible','off','BusyAction','cancel');
hold off;
%%-------------------------------------------------------------------------
%  子函数1
%%-------------------------------------------------------------------------
function MyWindowButtonMotionFcn(hObject, eventdata)
xyz2 = getappdata(gcf,'xyz_old');  % 当前视点
CP_new = get(gca,'CurrentPoint');
xyz3 = CP_new(1,:);  % 当前坐标点
xyz3 = R*xyz3/sqrt(xyz3*xyz3');
[cy,sy,cz,sz] = CoordinateRotation1(xyz2,xyz3);
[Theta1,Theta2] = CoordinateRotation2(cy,sy,cz,sz,xyz2,xyz3);
for t = nlinspace(Theta1,Theta2+2*pi*sign(Theta2-Theta1),100,4)
    xyzi = CoordinateRotation3(cy,sy,cz,sz,t);
    set(gca,'CameraPosition',xyzi);
    drawnow;
end
setappdata(gcf,'xyz_old',xyz3);
end

%%-------------------------------------------------------------------------
%  子函数2
%%-------------------------------------------------------------------------
function [cy,sy,cz,sz] = CoordinateRotation1(XYZ1,XYZ2)
p = cross(XYZ1,XYZ2);  % 法线方向向量
dx = p(1);dy = p(2);dz = p(3);
% 计算法线与y轴正向夹角余弦，法线与y轴正向夹角正弦负值
den1 = sqrt(dx^2 + dy^2);
cy = dy/den1;
cy(den1 == 0) = 1;
sy = -dx/den1;
sy(den1 == 0) = 0;

% 计算法线与z轴正向夹角余弦，法线与z轴正向夹角正弦负值
den2 = sqrt(dx^2 + dy^2 + dz^2);
cz = dz/den2;
cz(den2 == 0) = 1;
sz = -sqrt(dx^2 + dy^2)/den2;
sz(den2 == 0) = 0;
end

%%-------------------------------------------------------------------------
%  子函数3
%%-------------------------------------------------------------------------
function [Theta1,Theta2] = CoordinateRotation2(cy,sy,cz,sz,XYZ1,XYZ2)
% 通过坐标旋转计算当前视点与当前坐标点对应的角度
% XYZ1：当前视点； XYZ2：当前坐标点
fun = @(x)[x(1)*cy + x(2)*sy;-x(1)*cz*sy + x(2)*cz*cy + x(3)*sz];
XYZ1 = fun(XYZ1);
XYZ2 = fun(XYZ2);
Theta1 = atan2(XYZ1(2),XYZ1(1));
Theta2 = atan2(XYZ2(2),XYZ2(1));
Theta1 = Theta1*(Theta1>=0) + (2*pi+Theta1)*(Theta1<0);
Theta2 = Theta2*(Theta2>=0) + (2*pi+Theta2)*(Theta2<0);
end

%%-------------------------------------------------------------------------
%  子函数4
%%-------------------------------------------------------------------------
function XYZ = CoordinateRotation3(cy,sy,cz,sz,t)
% 通过坐标旋转计算视点坐标
x0 = cos(t);
y0 = sin(t);

% 计算三维管道型几何体的网格数据X，Y和Z
XYZ(1) = R*(x0*cy - y0*(cz*sy));
XYZ(2) = R*(x0*sy + y0*(cz*cy));
XYZ(3) = R*y0*sz;
end

%%-------------------------------------------------------------------------
%  子函数5
%%-------------------------------------------------------------------------
function yd = nlinspace(x1,x2,n,m)
% 产生不等间隔向量:y(n) = a*n^(1/m) + b,  y(1) = x1,  y(n) = x2
xd = 1:n;
a = (x2-x1)/(n^(1/m)-1);
b = x1-a;
yd = a*xd.^(1/m)+b;
end
end
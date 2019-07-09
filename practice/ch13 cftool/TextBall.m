function TextBall
% ��ת�������򣺻�����꣬�������������ת����
% CopyRight��xiezhh��л�л���
% д��2012.11.11������ڣ�

t1 = linspace(0,2*pi,21);
t1(end) = [];
t2 = linspace(-pi/2,pi/2,20);
[Theta, Pho] = meshgrid(t1,t2);
x = cos(Pho).*cos(Theta);
y = cos(Pho).*sin(Theta);
z = sin(Pho);
[data,str] = xlsread('�ټ���.xls');
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
xyz1 = [-7,-7,7];  % ��ǰ�ӵ�
set(gca,'CameraPositionMode','manual','CameraPosition',xyz1);
set(gcf,'WindowButtonMotionFcn',@MyWindowButtonMotionFcn);
[az,el,R] = cart2sph(xyz1(1),xyz1(2),xyz1(3));
setappdata(gcf,'xyz_old',xyz1);
set(gca,'Interruptible','off');
set(gcf,'Interruptible','off','BusyAction','cancel');
hold off;
%%-------------------------------------------------------------------------
%  �Ӻ���1
%%-------------------------------------------------------------------------
function MyWindowButtonMotionFcn(hObject, eventdata)
xyz2 = getappdata(gcf,'xyz_old');  % ��ǰ�ӵ�
CP_new = get(gca,'CurrentPoint');
xyz3 = CP_new(1,:);  % ��ǰ�����
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
%  �Ӻ���2
%%-------------------------------------------------------------------------
function [cy,sy,cz,sz] = CoordinateRotation1(XYZ1,XYZ2)
p = cross(XYZ1,XYZ2);  % ���߷�������
dx = p(1);dy = p(2);dz = p(3);
% ���㷨����y������н����ң�������y������н����Ҹ�ֵ
den1 = sqrt(dx^2 + dy^2);
cy = dy/den1;
cy(den1 == 0) = 1;
sy = -dx/den1;
sy(den1 == 0) = 0;

% ���㷨����z������н����ң�������z������н����Ҹ�ֵ
den2 = sqrt(dx^2 + dy^2 + dz^2);
cz = dz/den2;
cz(den2 == 0) = 1;
sz = -sqrt(dx^2 + dy^2)/den2;
sz(den2 == 0) = 0;
end

%%-------------------------------------------------------------------------
%  �Ӻ���3
%%-------------------------------------------------------------------------
function [Theta1,Theta2] = CoordinateRotation2(cy,sy,cz,sz,XYZ1,XYZ2)
% ͨ��������ת���㵱ǰ�ӵ��뵱ǰ������Ӧ�ĽǶ�
% XYZ1����ǰ�ӵ㣻 XYZ2����ǰ�����
fun = @(x)[x(1)*cy + x(2)*sy;-x(1)*cz*sy + x(2)*cz*cy + x(3)*sz];
XYZ1 = fun(XYZ1);
XYZ2 = fun(XYZ2);
Theta1 = atan2(XYZ1(2),XYZ1(1));
Theta2 = atan2(XYZ2(2),XYZ2(1));
Theta1 = Theta1*(Theta1>=0) + (2*pi+Theta1)*(Theta1<0);
Theta2 = Theta2*(Theta2>=0) + (2*pi+Theta2)*(Theta2<0);
end

%%-------------------------------------------------------------------------
%  �Ӻ���4
%%-------------------------------------------------------------------------
function XYZ = CoordinateRotation3(cy,sy,cz,sz,t)
% ͨ��������ת�����ӵ�����
x0 = cos(t);
y0 = sin(t);

% ������ά�ܵ��ͼ��������������X��Y��Z
XYZ(1) = R*(x0*cy - y0*(cz*sy));
XYZ(2) = R*(x0*sy + y0*(cz*cy));
XYZ(3) = R*y0*sz;
end

%%-------------------------------------------------------------------------
%  �Ӻ���5
%%-------------------------------------------------------------------------
function yd = nlinspace(x1,x2,n,m)
% �������ȼ������:y(n) = a*n^(1/m) + b,  y(1) = x1,  y(n) = x2
xd = 1:n;
a = (x2-x1)/(n^(1/m)-1);
b = x1-a;
yd = a*xd.^(1/m)+b;
end
end
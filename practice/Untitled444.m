%六轴机械臂几何法反解计算
%流程：输入末端点坐标，检查是否在工作空间范围内，计算反解，正解验证
clc;
clear;
format short;%保留精度
 
%角度转换
du=pi/180;     %度
radian=180/pi; %弧度
 
%% 模型导入
robot_hand;
 
%% 工作空间计算
figurews;
 
%% DH参数矩阵
R=[0;0;0];
syms theta1 theta2 theta3 theta4 theta5 theta6
%  theta    d   a      alpha
L=[0      L1   0      -pi/2 ;
   pi/2   0    -L2    0     ;
   0      0    -L3    pi/2  ;
   0      L4   0      -pi/2 ;
   pi/2   0    0      pi/2  ;    
   0      L5   0      0     ];
T_start=six_link.fkine([0 0 0 0 0 0]);
q_test=[pi/4 pi/3 pi/3 pi/6 pi/3 pi/4];
T_test_end=six_link.fkine(q_test);
  
A{1}=trotz(theta1)*transl(0,0,L(1,2))*trotx(L(1,4))*transl(L(1,3),0,0);
A{2}=trotz(theta2)*transl(0,0,L(2,2))*trotx(L(2,4))*transl(L(2,3),0,0);
A{3}=trotz(theta3)*transl(0,0,L(3,2))*trotx(L(3,4))*transl(L(3,3),0,0);
A{4}=trotz(theta4)*transl(0,0,L(4,2))*trotx(L(4,4))*transl(L(4,3),0,0);
A{5}=trotz(theta5)*transl(0,0,L(5,2))*trotx(L(5,4))*transl(L(5,3),0,0);
A{6}=trotz(theta6)*transl(0,0,L(6,2))*trotx(L(6,4))*transl(L(6,3),0,0);
 
 T6=A{1}*A{2}*A{3}*A{4}*A{5}*A{6};
 
% 输入末端点坐标, 末端姿态默认与初始状态一致
 point_xyz=inputdlg({'X','Y','Z'},'末端点坐标',1,{'52.7','0','48.75'});
 point_x=str2double(point_xyz{1});
 point_y=str2double(point_xyz{2});
 point_z=str2double(point_xyz{3});
 
%% target point
X=point_x;
Y=point_y;
Z=point_z;
Judge_Point_in_WS=0;
 
if (X<X_max)&&(X>X_min)
    if (Y<Y_max)&&(Y>Y_min)
        if (Z<Z_max)&&(Z>Z_min)
            if (X^2+Y^2+Z^2)<R_max_squre
                Judge_Point_in_WS=1;
            end
        end
    end
end
 
    %% ikine
if Judge_Point_in_WS==1
   T06=[T_start(1:3,1:3) [X;Y;Z];
        0    0    0  1] 
  T5=T06*inv(A{6});
  X_t=double(T5(1,4));
  Y_t=double(T5(2,4));
  Z_t=double(T5(3,4));
  %T45=A{3}*A{4};
  %double(T45(3,4));
  
  r_squre=X_t^2+Y_t^2;
  r_gen=sqrt(r_squre);
  S=Z_t-L1;
  R_squre=S^2+r_squre;
  R_gen=sqrt(R_squre);
  
  %% solve theta1
  theta11=atan2(Y_t,X_t);
  theta11=double(real(theta11));
  
  %% solve theta3
  a33=sqrt(L3^2+L4^2);
  a33_angle=atan(L4/L3);
  cos_theta3_bu=(L2^2+a33^2-R_squre)/(2*L2*a33);
  theta33=pi-acos(cos_theta3_bu)-a33_angle;
  theta33=double(theta33);
 
  %% solve theta2
  cos_theta2_bu=(L2^2+R_squre-a33^2)/(2*L2*R_gen);
  if S>0
     theta22=pi/2-acos(cos_theta2_bu)-atan(S/r_gen);
  else
     theta22=pi/2-acos(cos_theta2_bu)+atan(-S/r_gen);
  end
  theta22=double(theta22);
% end 
% 
  %% solve to theta4 theta5 theta6
  %% 赋值
  A11=trotz(L(1,1)+theta11)*transl(0,0,L(1,2))*trotx(L(1,4))*transl(L(1,3),0,0);
  A22=trotz(L(2,1)+theta22)*transl(0,0,L(2,2))*trotx(L(2,4))*transl(L(2,3),0,0);
  A33=trotz(L(3,1)+theta33)*transl(0,0,L(3,2))*trotx(L(3,4))*transl(L(3,3),0,0);
       
 %% solve theta4 theta5 theta6
  T321=inv(A11*A22*A33);
  T45=simplify(A{4}*A{5});
  kimejer=simplify(T321*T5);
  
      %%  solve theta6
      str_solve=kimejer(3,2);%解出theta6 的方程式,if theta6 is right, theta45 then will right
      AA=double(subs(str_solve,[cos(theta6),sin(theta6)],[1,0]));
      BB=double(subs(str_solve,[cos(theta6),sin(theta6)],[0,1]));
      theta66=atan(-AA/BB);
 
      %% solve theta4 and theta5
      kimejer2=simplify(subs(kimejer,theta6,theta66));
          %% solve theta4 
          theta441=double(atan(kimejer2(2,1)/kimejer2(1,1)));
          if (theta441*radian)<q4_end&&(theta441*radian)>q4_s
              theta44=theta441;
          end
 
          %% solve theta5
          theta551=double(atan2(-kimejer2(3,1),kimejer2(3,3))-pi/2);
          if (theta551*radian)<q5_end&&(theta551*radian)>q5_s
              theta55=theta551;
          end
 
  %% check
  theta_ikine=[theta11,theta22,theta33,theta44,theta55,theta66]*radian 
  T_check=six_link.fkine([theta11 theta22 theta33 theta44 theta55 theta66])
  figure (2)
  hold on 
      six_link.plot([theta11,theta22,theta33,theta44,theta55,theta66], plotopt{:});
  hold off
end
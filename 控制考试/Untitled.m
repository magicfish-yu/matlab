%%
A = [1 2 3; 3 4 5; 5 4 19];
B = inv(A)
C = eig(A)  %特征值
D = det(A)  %行列式
%%
B = [2 3 1; 4 2 3; 7 1 -1];
C = [4;17;1]
x = B\C
rank(B)
%%
A = [1 2 3; 3 4 5; 5 4 19];
B = [2 3 1; 4 2 3; 7 1 -1];
A/B  % == A*inv(B) || A*B^-1
A^2
A.*B
A.^B
%A^B
A'
%%
syms t
laplace(dirac(t)) %单位脉冲
laplace(heaviside(t))%单位阶跃
laplace(t)%单位斜坡
laplace(0.5*t^2)%单位加速度
%%
syms a t w x
f1 = laplace(exp(a*t))
f2 = laplace(sin(w*t))
%%
syms s
f = 4/s*(s+2)
ilaplace(f)
f2 = (2*s^2+12*s+6)/(s*(s+2)*(s+3))
ilaplace(f2) %反变换
%%
num = [12 24 0 20];
den = [2 4 6 2 2];
SYS = tf(num,den)
[num den] = tfdata(SYS,'v')
tf(num,den,'inputdelay',3) %带时间延迟的传递函数表示
%%
num = 4*conv([1 2],conv([1 6 6],[1 6 6]))
den = conv([1 0],conv([1 1],conv([1 1],conv([1 1],[1 3 2 5]))))
SYS = tf(num,den)
[num den] = tfdata(SYS,'v')
%%
z = [-3];
p = [-1, -2, -5];
k = 6;
Gz = zpk(z,p,k)
Gt = tf(Gz)
%%
%用conv实现传递函数(多项式情形)
num1 = 6*[1 2];
den1 = conv([1 1],conv([1 3],[1 5]));
num2 = [1 2.5];
den2 = conv([1 1],[1 4]);
G1 = tf(num1,den1)
G2 = tf(num2,den2)
%用零极点实现，多项式的式子零极点比较容易确定
z1 = [-2]; p1 = [-1, -3, -5]; k1 = 6;
z2 = [-2.5]; p2 = [-1 -4]; k2 = 1;
G1 = tf(zpk(z1,p1,k1))
G2 = tf(zpk(z2,p2,k2))

GS = series(G1,G2)
GP = parallel(G1,G2)
%%
G = tf([1 -1],[1 -5 -2])
H1 = tf(1,1)
H2 = tf([1 1],[1 3 2])
GB1 = feedback(G,H1)
GB2  = feedback(G,H2)
%%
z = -2.5; p = [-1 -4]; k = 1;
G = tf(zpk(z,p,k))
pole(G)
pzmap(G)
%%
num = [2 0 9 1];
den = [1 1 4 4];
[r p k] = residue(num,den)
%G = tf(rpk(r,p,k))
%%
num = [1 3];
den = [1 3 2];
[r p k] = residue(num,den)
[num den] = residue(r,p,k)
%%
num = [1 2 3];
den = [1 3 3 1];
[r p k] = residue(num,den)
%%
r = [-0.25i 0.25i -2];
p = [2i -2i -1];
k = 2;
[num den] = residue(r,p,k)
SYS = tf(num,den)
%%
t = 0:99;
p = rand(100,1)'
a = [1 2];
b= [1 2 3];
s1 = tf(a,b);
lsim(s1,p,t)
%%
t = 0:0.01:5;
u = sin(t);
a = [1 2];
b = [1 2 3];
sys = tf(a,b);
step(sys,t)
impulse(sys,t)
lsim(sys,u,t);
%%
k = 100; z = [-5]; p = [2 -8 -20];
GH = zpk(z,p,k)
nyquist(GH)
bode(GH)
%%
syms y1 y2 t;
q = tf(20,[3 10]);
[a1,a2] = bode(q,4);
[a3 a4] = bode(q, 2/3);
A1 = a1*3;
B1 = 30 + a2;
A2 = a3*4;
B2 = 45+a4;
y1 = A1*sin(4*t+B1);
y2 = A2*cos(2*t/3 + B2);
y=y1+y2
%%
num = 5*[0.0167 1];
den = conv(conv([1 0],[0.03 1]), conv([0.0025 1],[0.001 1]));
G = tf(num,den);
w = logspace(0, 4, 50);
bode(G,w);
[Gm,Pm,Wcg,Wcp] = margin(G)
%%
num = [12 24 0 20];
den = [2 4 6 2 2];
G = tf(num,den)
[A B C D]=tf2ss(num,den)
[num den] = ss2tf(A,B,C,D)
[z p k] = ss2zp(A,B,C,D)
[A1 B1 C1 D1] = zp2ss(z,p,k)
%%
A = [0 1 0; 0 0 1; -6 -11 -6];
B = [1;1;1];
C = [1 0 0];
D = 0;
[V DJ] = eig(A)
ss3 = ss(A,B,C,D);
ss2ss(ss3,V^-1)
%%
r1 = rss(4,3,2);
t = 0:0.1:30;
u = [sin(t);cos(t)];
lsim(r1,u,t)
[Y T X] = lsim(r1,u,t)
%%
A = [1 3 2; 0 2 0; 0 1 3]
B = [2 1; 1  1; -1 -1]
rank(ctrb(A,B))%系统能控性判别
%%
Q = eye(2,2)
A = [0 1; -1 -1]
V = lyap(A',Q)
eig(V) %特征值大于0，就是正定即稳定的
%%
A = [-2 -2.5 -0.5; 1 0 0 ; 0 1 0];
B = [1 0 0]'
P = [-1 -2 -3];
K = acker(A,B,P)
Ac = A-B*K
eig(Ac)
%%
A = [-0.1 5 0.1; -5 -0.1 5; 0 0 -10];
B = [0 0 10]';
P = [-1+5j -1-5j -10]
K = place(A,B,P)
Kc = A -B*K
eig(Kc)
%%
z=[-3];p=[-1 -2 -5];k=6;
Gz = zpk(z,p,k);
[F,G] = c2d(
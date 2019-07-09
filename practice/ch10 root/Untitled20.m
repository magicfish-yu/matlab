syms a b c d x  y z h A B E
A=[a b; c d];
E=[1 0; 0 1];
B=[x y;z h];
C=solve(A*B-E,B)
C.x
C.y
C.z
C.h

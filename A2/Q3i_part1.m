syms x y z v s1
%c = [3+4i, 4+3j; -i, 10j]

t11 = 0; 
t12 = 1;
t13 = 0.7;
t14 = 0.7;
t15 = 1.7;

x1 = 0;
y1 = 3;
z1 = 0;

x2 = 6;
y2 = 0;
z2 = 0;

x3 = 3;
y3 = 4;
z3 = 0;

x4 = 4;
y4 = 3;
z4 = 0;

x5 = 0;
y5 = 0;
z5 = 8;

A = [   x1 y1 z1 -t11 t11^2/2; 
        x2 y2 z2 -t12 t12^2/2;
        x3 y3 z3 -t13 t13^2/2;
        x4 y4 z4 -t14 t14^2/2;
        x5 y5 z5 -t15 t15^2/2   ]

r1 = x1^2 + y1^2 + z1^2;
r2 = x2^2 + y2^2 + z2^2; 
r3 = x3^2 + y3^2 + z3^2;
r4 = x4^2 + y4^2 + z4^2;
r5 = x5^2 + y5^2 + z5^2;

b = [r1/2; r2/2; r3/2; r4/2; r5/2]

%traspose
A_plus = inv(transpose(A) * A) * transpose(A)

w = [x; y; z; v^2; v*s1]; 

w = A_plus * b










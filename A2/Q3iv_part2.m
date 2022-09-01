t12 = -1.4;
t13 = 0.4;
t14 = -1.6;
t15 = -2.6;

x1 = 0;
y1 = 0;

x2 = -1;
y2 = -1;

x3 = 0;
y3 = 1;

x4 = 3;
y4 = 1;

x5 = 1;
y5 = 4;

A = [   x2 y2 -t12; 
        x3 y3 -t13;
        x4 y4 -t14;
        x5 y5 -t15;]

%traspose
A_plus = inv(transpose(A) * A) * transpose(A)

r2 = x2^2 + y2^2;
r3 = x3^2 + y3^2;
r4 = x4^2 + y4^2;
r5 = x5^2 + y5^2;

b = [r2/2; r3/2; r4/2; r5/2];

d = [-(t12^2)/2; -(t13^2)/2; -(t14^2)/2; -(t15^2)/2;];

p = A_plus * b;
q = A_plus * d;

v = 1.8;

res = [xt; yt; zt; v*s1];

res = p + (v^2)*q

syms s a1 a2 b1 b2 c1 c2 f1 f0
A=[0 1 0 0;0 b1*f1 a1 0;0 0 0 1;0 b2*f1 a2 0];
B=[0;b1*f0;0;b2*f0];
C=[0 0 c1 0;c2 0 0 0];
X=expand(det(s*eye(4,4)-A));				%振子伝達関数分母
Y=expand(sum(C*adjoint(s*eye(4,4)-A)*B));	%振子伝達関数分子

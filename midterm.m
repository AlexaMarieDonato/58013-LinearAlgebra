%1
A = [0,1; 1,0] ; B = 2; C=A+B

%2
A = [1 1 0 0]
B = [1;2;3;4]
C=A*B

%6
D = [-5, -1, -4;
    4, 0, -3;
    2, -2, 6]
dD = det(D)

%8
A = [1 2; 3 4]
C = A^2

%10
syms x y z;
eqn1 = 3*x - 5*y + 4*z == 5;
eqn2 = 5*x + 2*y + z == 0;
eqn3 = 2*x + 3*y - 2*z == 3;

solve = solve(eqn1, eqn2, eqn3), [x; y; z];

xsolve = solve.x
ysolve = solve.y
zsolve = solve.z


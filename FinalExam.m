%Question1
B = [8,5,-6 ; -12,-9,12 ; -3,-3,5];
disp(B);
[ev,dv] = eig(B)

a=B*ev(:,1);
disp(a)
b=B*ev(:,2);
disp(b)
c=B*ev(:,3);
disp(c)

%Question2
syms x y z;

eqn1 = 3*x - 1*y + 1*z == 5;
eqn2 = 9*x - 3*y + 3*z == 15;
eqn3 = -12*x + 4*y - 4*z == -20;

solve = solve(eqn1, eqn2, eqn3), [x; y; z];

xsolve = solve.x
ysolve = solve.y
zsolve = solve.z

%Question3
syms x;
eqn1 = (x-6) + x + 3*x == 89;

solve = solve(eqn1), [x];

xsolve = solve.x

A_solve = xsolve - 6
B_solve = xsolve
C_solve = 3*xsolve



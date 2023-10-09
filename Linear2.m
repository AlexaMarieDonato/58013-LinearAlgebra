syms X1 X2 X3;
eq1 = 3*X1 - 9*X3 == 33;
eq2 = 7*X1 - 4*X2 - X3 == -15;
eq3 = 4*X1 + 6*X2 + 5*X3 == -6;
soln = solve(eq1, eq2, eq3), [X1; X2; X3];
X1soln = soln.X1
X2soln = soln.X2
X3soln = soln.X3


A = [1, 1, 1; 1, 2, 2; 1, 2, 3]
A1 = [5, 1, 1; 6, 2, 2; 8, 2, 3]
A2 = [1, 5, 1; 1, 6, 2; 1, 8, 3]
A3 = [1, 1, 5; 1, 2, 6; 1, 2, 8]
dA = det(A)
dA1 = det(A1)
dA2 = det(A2)
dA3 = det(A3)
X1 = dA1/dA
X2 = dA2/dA
X3 = dA3/dA
E1 = X1 + X2 + X3
E2 = X1 + 2*X2 + 2*X3
E3 = X1 + 2*X2 + 3*X3
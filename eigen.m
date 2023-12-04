A = [-6,3;4,5];
disp(A)
[ev,dv] = eig(A);
ev1 = [-0.9487;0.3162];
s=A*ev(:,1);
disp(s)
t=A*ev1;
disp(t)
u=-7*ev1;
disp(u)
v=A*ev(:,2);
disp(v)
w=6*ev(:,2);
disp(w)
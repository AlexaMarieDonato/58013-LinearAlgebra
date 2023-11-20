syms x y;
A = 20*x + 10*y == 350;
B = 17*x + 22*y == 500;
[A, B] = equationsToMatrix([A, B], [x,y]);
C = linsolve(A, B);
C

plot(A,B);
title('Linear Application');
grid on;
xlabel('x-axis');
ylabel('y-axis');
plot(A, B,'*');
legend('Data points');
plot(A, B);
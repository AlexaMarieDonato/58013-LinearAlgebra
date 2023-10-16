% Doolittle's Method
A = [1 1 1
    1 2 2
    1 2 3];
B = [5
    6
    8];

matrixSize = length(A);
Upper = zeros(size(A));
Lower = eye(size(A));
Lower(:, 1) = 1;
Lower(3, 2) = 1;
Upper(1, :) = 1;
Upper(:, 3) = 1;
Upper(2, 2) = 1;
Lower
Upper
for k = 2:matrixSize
    Upper(k,k)=A(k,k)-dot(Lower(k,1:k-1),Upper(1:k-1,k));
    Lower(k,k)=A(k,k)-dot(Lower(k,1:k-1),Upper(1:k-1,k))/Upper(k,k);
end
%LY = B
Y = zeros(matrixSize,1);
Y(1) = B(1);
for row = 2:matrixSize
    Y(row) = B(row);
    for col = 1: row-1
        Y(row)=Y(row)-Lower(row,col)*Y(col);
    end
    Y(row)= Y(row)/Lower(row,row);
end
Y
%UX = Y
x =zeros(matrixSize,1);
x(matrixSize)=Y(matrixSize)/Upper(matrixSize,matrixSize);
for row = matrixSize-1:-1:1   %Second to the last row
    temp=0;
    for col=matrixSize:-1:1
        temp = temp + Upper(row,col) * x(col);
    end
    x(row) = (Y(row)-temp)/Upper(row,row);                                                                                            
end
x
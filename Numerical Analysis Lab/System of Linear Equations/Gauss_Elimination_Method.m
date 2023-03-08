n = input('Please Enter the size of the equation system  n =   ') ;
C = input('Please Enter the elements of the Matrix C ' ) ;
b = input('Please Enter the elements of the Matrix b ' ) ;
dett = det(C);
if dett == 0
    fprintf('This system unsolvable because det(C) = 0 ')
else
    fprintf('The Matrix form is \n')
disp(C)
b = b';
    fprintf('The corresponding Cx=b, b values are \n')
disp(b)
    fprintf('The Augmented Matrix form is \n')
A = [ C  b ] ;
disp(A)
for j = 1:n
    A( j , : ) = A( j , : )/A( j , j ) ;
    %for the diagonal element
        for i= 1 : n
            if( i ~=  j )
            %For the ratio
            mult = A( i , j ) ;
            %for row-echelon form
              A( i , : ) = A( i , : ) - mult * A( j , : )
            end
        end
end
fprintf('The Diagonal Matrix form is \n');
disp(A);
%this is nth element value
x(n) = A(n,n+1)/A(n,n);
%for back-substituition 
    for i = 1 : n
      x(i) = A(i,n+1);
    end
end
fprintf('Solutions Are from the Gauss-Jordan Elimination Method');
disp(x)
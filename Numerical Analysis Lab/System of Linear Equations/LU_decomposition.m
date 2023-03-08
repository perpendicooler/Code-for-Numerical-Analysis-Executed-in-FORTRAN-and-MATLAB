% The Matrix form must be in Ax = b
A = input('Enter the coefficient matrix A : \n');
B = input('Enter the RHS of the system: ');

% A = LU so LUX = B let UX =Y
%then first we need to find the value of Y and 
%then we  need to find X by guass elimination

[L , U ] = lu(A) ;

disp('The lower Triangular Matrix L is ') ;
disp(L) ;

disp('The upper Triangular Matrix U is ') ;
disp(U) ;

%The new augmented matrix
P = [L B] ; 

[row , col ] = size(P);

for m = 1 : row
    a = P (m,m);
    if a == 0
        disp ('LU decompostion method cannot be applicable');
        return
    end
    P( m , : ) = P (m , : ) / a;
end
s = 0;
%finding thesolution of Y
for m=1:row-1
    for k = row-m :row-1
        s = s + P (m+1 , col-k-1) * P(col-k-1,col);
        P (m+1 ,col ) = P(m+1,col) - s ;
        s = 0 ;
    end
end
Y = P (:,col);
disp (' The solution for Y is :');
disp(Y);
%construction the new augmented matrix Q
Q = [U Y] ; 
for m = 1 : row
    b = Q ( m , m );
    if b == 0
        disp('LU decompostion method cannot be applicable');
        return
    end
    Q(m,:) = Q(m,:)/b;

end
%Finding the final solution
for m =row : -1 : 2
    for k= m+1 : col
        s = s + Q(m-1,k-1) * Q (k-1 ,col);
        Q (m-1 , col) = Q (m-1 ,col)- s ;
    end
end
X = Q (: , col);
disp('The required Solution X is in LU decomposition');
disp(X)
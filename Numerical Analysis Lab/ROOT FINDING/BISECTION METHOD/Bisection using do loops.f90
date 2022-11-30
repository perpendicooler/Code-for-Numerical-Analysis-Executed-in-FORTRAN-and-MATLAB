PROGRAM bisection
    IMPLICIT NONE
    REAL :: a,b,tol,er,p,f
    INTEGER :: i=1
    WRITE (*,*) "Enter [a,b] of the given equation"!--Take 0 and 1 as a interval--!
    READ (*,*) a,b
    WRITE (*,*) "The tolerance up to"
    READ (*,*) tol
    IF ((f(a)*f(b))== 0) THEN
        IF ((f(a)==0).and.(f(b)==0)) THEN
            WRITE (*,*) 'The roots are',a,' and ',b
        ELSE IF (f(a)==0) THEN
            WRITE (*,*) 'The root is',a
        ELSE IF (f(b)==0) THEN
            WRITE (*,*) 'The root is',b
        END IF
    ELSE IF ((f(a)*f(b))>0) THEN
        WRITE (*,*) 'The root does not exist in  ',a,' and ',b
    ELSE IF ((f(a)*f(b))<0) THEN
        open(10,file="output.txt")!--Here it will open a file named output.txt--!
        DO
            p=(a+b)/2
            IF (f(p)==0) EXIT
            er=abs((a-b)/a)
            WRITE (10,*) "Total Steps =",i,"The root is",p
            IF (er<((tol))) EXIT
            IF ((f(p)*f(a))<0) THEN

                b=p
            ELSE IF ((f(p)*f(b))<0) THEN
                a=p

            END IF
            i = i + 1
        END DO
    END IF

END PROGRAM

REAL FUNCTION f(x)
    f=x*exp(x)-1
END FUNCTION f



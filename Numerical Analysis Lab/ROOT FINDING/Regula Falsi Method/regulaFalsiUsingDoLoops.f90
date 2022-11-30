PROGRAM regulafalsi
    REAL :: a,b,tol,p
    INTEGER :: i=1
   !!open(10,file="regulaFalsi.txt")!!--input from the file named regula falsi.txt--!!
    WRITE(*,*) "ENTER THE INTERVAL "
    READ (*,*) a,b!!--0 and 1 is the boundary value of this function where the root lies and tol is tolerance upto--!!
    WRITE(*,*)"ENTER THE TOLERANCE "
    READ(*,*)TOL
    open(11,file="regulaFalsioutput.txt")
    IF ((f(a)*f(b))>0) THEN
        WRITE (*,*) 'The root does not exist in  ',a,' and ',b
    ELSE IF ((f(a)*f(b))<0) THEN
        DO
            p=(a*f(b)-b*f(a))/(f(b)-f(a))
            IF (f(p)==0) EXIT

            WRITE (11,*) 'Total Steps =',i,'The root is',p
            IF (abs((a-b)/a)<((tol))) EXIT
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
    f=x*exp(x)-2
END FUNCTION f




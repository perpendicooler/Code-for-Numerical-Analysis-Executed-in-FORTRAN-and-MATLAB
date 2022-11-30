program newtonRaphson
    integer::i=1
    real::x,x0,e
    !open(10,file="nr.txt")!!--Reading the file from the file nr.txt--!!
    open(11,file="nroutput.txt")
    WRITE(*,*)"Enter the initial guess"
    READ(*,*)x0!!--x0=2 is initial guess,e is tolerance up to--!!
    WRITE(*,*)"Enter the tolerance"!!--0.0001--!
    read(*,*)e

    do
        x=x0-(f(x0)/df(x0))
        write(11,*)"Number of steps ",i, " the root x is =",x
        IF (ABS(x-x0)<=e) EXIT
        x0=x
        i=i+1
    end DO

 end program

 real function f(x)
    real::x
    f=x**3-2*x-5
    return
 end

real function df(x)
    real::x
    df=3*x**2-2
    return
end

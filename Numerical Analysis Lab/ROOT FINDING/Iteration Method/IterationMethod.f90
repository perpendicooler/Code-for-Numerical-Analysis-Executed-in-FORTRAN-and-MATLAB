program iteration

    real :: x,x0,e
    integer :: i=1,n
    !open(10,file='iterationMethod.txt')
    open(11,file='iterationMethodOutput.txt')
    write(*,*)"Enter the initial guess."
    read(*,*)x0!!--x0 is initial guess,n is number of steps and e is tolerance up to--!!
    write(*,*)"Enter the tolerance"
    read(*,*)e!!--0.0001--!

    do
        x=g(x0)
        write(11,*)"number of steps = ",i," The root x is : ",x
        IF (abs(x-x0)<=e) EXIT
        x0=x
        i=i+1
    end do

end program

real function f(x)
    real :: x
    f=x*exp(x)-1
    return
end function

real function g(x)
    real :: x
    g=exp(-x)
    return
end function

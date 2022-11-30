program trapezoidal
    real i,n,a,b,x
    real h,sm,trapzoidal
    print*,"Enter the value of the upper limit"!!--1.4--!!
    read*,b
    print*,"Enter the value of the lower limit"!!--0.2--!!
    read*,a
    print*,"Enter the number of any interval"!!--12--!!
    read*,n
    open(10,file="trapezoidal.txt")
    sm=0
    h=(b-a)/n
    sm=fun(a)+fun(b)
    write(10,*),"the functional value of point",a,"=",fun(a)
     do i=1,n
        x=a+i*h
        y=fun(x)
        write(10,*)"the functional value of point",x,"=",y
    end do
    do i=1,n-1
        sm=sm+(2*fun(a+(i*h)))
    end do
    trapzoidal=sm*(h/2)
    write(10,*)"The value of the of  integration by trapezoidal is ",trapzoidal
    write(10,"(A,f10.5)")"the value with 5 decimal point",trapzoidal

end program

real function fun(x)
    fun=sin(x)-log(x)+exp(x)
end function

program simpson3_8
    integer i,n
    real a,b,x,y,h,sm,simpson
    print*,"Enter the value of the upper limit"
    read*,b!!--1.4--!
    print*,"Enter the value of the lower limit"
    read*,a!!--0.2--!
    print*,"Enter the number of 3's multiple interval"
    read*,n!!--12--!
    h=(b-a)/n
    open(10,file="simpson3.8.txt")

    write(10,*)"the functional value of point",a,"=",fun(a)
    do i=1,n
        x=a+i*h
        y=fun(x)
        write(10,*)"the functional value of point",x,"=",y
    end do
    sm=fun(a)+fun(b)
    do i=1,n-1
        if (mod(i,3)==0) then
            sm=sm+2*fun(a+(i*h))
        else
            sm=sm+3*fun(a+(i*h))
        end if
    end do

    write(10,*)"the functional value of point",b,"=",fun(b)
    simpson=sm*(3*h/8)
    write(10,*)"The value of the of  integration by simpsons 3/8 rule is ",simpson
    write(10,"(A,f10.5)")"the value with 5 decimal point",simpson

end program

real function fun(x)
    fun=sin(x)-log(x)+exp(x)
end function



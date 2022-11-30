program simpson1_3
    integer i,n
    real a,b,x,y,h,sm,simpson
    print*,"Enter the value of the upper limit"
    read*,b!!--1.4--!!
    print*,"Enter the value of the lower limit"
    read*,a!!--0.2--!!
    print*,"Enter the number of any 2's multiple of interval"
    read*,n
    h=(b-a)/n!!--12--!!
    open(10,file="simpson1_3.txt")

    write(10,*)"the functional value of point",a,"=",fun(a)
    do i=1,n
        x=a+i*h
        y=fun(x)
        write(10,*)"the functional value of point",x,"=",y
    end do
    sm=fun(a)+fun(b)
    do i=1,n-1
        if(mod(i,2)==0)then
        sm=sm+(2*fun(a+(i)*h))
        else
        sm=sm+(4*fun(a+((i)*h)))
        endif
    end do

    write(10,*)"the functional value of point",b,"=",fun(b)
    simpson=sm*(h/3)
    write(10,*)"The value of the of  integration by simpsons 1/3 rule is ",simpson
    write(10,"(A,f10.5)")"the value with 5 decimal point",simpson

end program

real function fun(x)
    fun=sin(x)-log(x)+exp(x)
end function



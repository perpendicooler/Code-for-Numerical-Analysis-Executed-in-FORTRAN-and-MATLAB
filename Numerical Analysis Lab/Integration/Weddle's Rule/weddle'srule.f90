program weddles
    integer i,n
    real a,b,x,y,h,sm,weddle
    print*,"Enter the value of the upper limit"
    read*,b!!--1.4--!
    print*,"Enter the value of the lower limit"
    read*,a!!--0.2--!
    print*,"Enter the number 6's multiple of interval"
    read*,n!!--12--!
    h=(b-a)/n
    open(10,file="weddle.txt")

    write(10,*)"the functional value of point",a,"=",fun(a)
    do i=1,n-1
        x=a+i*h
        y=fun(x)
        write(10,*)"the functional value of point",x,"=",y
    end do
    sm=fun(a)+fun(b)
    do i=1,n-1
        if (mod(i,6)==1 .or. mod(i,6)==5)then
            sm=sm+5*fun(a+(i*h))
        elseif(mod(i,6)==3)then
            sm=sm+6*fun(a+(i*h))
        elseif(mod(i,6)==0)then
            sm=sm+2*fun(a+(i*h))
        else
            sm=sm+fun(a+(i*h))
        end if
    end do
    write(10,*)"the functional value of point",b,"=",fun(b)
    weddle=sm*(3*h/10)
    write(10,*)"The value of the of  integration by weddles  rule is ",weddle
    write(10,"(A,f10.5)")"the value with 5 decimal point",weddle

end program

real function fun(x)
    fun=sin(x)-log(x)+exp(x)
end function



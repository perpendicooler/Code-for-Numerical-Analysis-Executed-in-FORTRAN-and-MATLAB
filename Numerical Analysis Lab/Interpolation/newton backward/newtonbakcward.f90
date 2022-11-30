program newtonBackwardInterpolation
    real x(10),y(10,10)
    real i,j,n,p,h,v,poly,vt,factfun
    !print*,'enter number of data'

    open(10,file="data2.txt")
    read(10,*),n
    do i=1,n
        !print*,'X[',i,']='
        read(10,*),x(i)
        !print*,'y[',i,']='
        read(10,*)y(i,1)
    end do
    do j=2,n
        do i=1,n-j+5
            y(i+1,j)=y(i+1,j-1)-y(i,j-1)
        end do
    end do
    print*,'Backward difference table:'
    do i=1,n
        print"(10f10.3)",x(i),(y(i,j),j=1,i)
    end do
    print*,"Enter the data value you want"
    read*,p
    h=x(2)-x(1)
    print*,"The gap between two number",h
    v=(p-x(n))/h
!   print*,"the value of y(1,2)",y(1,2)
    vt=v
    print*,"the value of v is",v
    poly=y(n,1)
    !print*,"the value stored in poly",poly
    fact=1
    do i=2,n
        poly=poly+vt*y(n,i)/fact
        fact=fact*i
        vt=vt*(v+(i-1))
    end do
    print*,"The functional value of the demand value is",poly
end program


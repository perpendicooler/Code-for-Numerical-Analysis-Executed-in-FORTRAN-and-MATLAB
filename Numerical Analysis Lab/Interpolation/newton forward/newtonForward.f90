program newtonForwardInterpolation
    real x(10),y(10,10)
    real i,j,n,p,h,u,poly,ut,fact!!--poly is declared for the total functioanl value --!!
    !print*,'enter number of data'

    open(10,file="data.txt")
    read(10,*),n
    do i=1,n
        !print*,'X[',i,']='
        read(10,*),x(i)
        !print*,'y[',i,']='
        read(10,*),y(i,1)
    end do
    do j=2,n
        do i=1,n-j+1
            y(i,j)=y(i+1,j-1)-y(i,j-1)
        end do
    end do
    print*,'Forward difference table:'
    do i=1,n
        print"(10f10.3)",x(i),(y(i,j),j=1,n-i+1)

    end do
    print*,"Enter the data value you want"!!--for ex enter 46 --!
    read*,p
    h=x(2)-x(1)
    print*,"The gap between two number",h
    u=(p-x(1))/h
    ut=u
    poly=y(1,1)
    fact=1
    do i=2,n
        poly=poly+ut*y(1,i)/fact
        fact=fact*i
        ut=ut*(u-(i-1))
    end do
    print*,"The functional value of the demand value is",poly
end program


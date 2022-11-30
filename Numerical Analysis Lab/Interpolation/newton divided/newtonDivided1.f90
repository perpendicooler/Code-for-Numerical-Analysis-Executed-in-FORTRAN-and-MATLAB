program newtonDividedInterpolation
    real x(10),y(10,10)
    real i,j,n,f,poly
    !print*,'enter number of data'

    open(10,file="input.txt")
    read(10,*),n
    do i=1,n
        !print*,'X[',i,']='
        read(10,*),x(i)
        !print*,'y[',i,']='
        read(10,*),y(i,1)
    end do
    do j=2,n
        do i=1,n-j+1
            y(i,j)=(y(i+1,j-1)-y(i,j-1))/(x(i+j-1)-x(i))
        end do
    end do
    print*,'Divided difference table:'
    do i=1,n
        print"(10f10.1)",x(i),(y(i,j),j=1,n-i+1)
    end do
    print*,"Enter the data value you want"!!--f(8)--so enter 8 to get the answer 448--!
    read*,f
    poly=y(1,1)
    !print*,"the value stored in poly",poly
    DO i=1,n-1
        p=1.0
            DO j=1,i
                p=p*(f-x(j))
            END DO
        poly=poly+p*y(1,i+1)
    END DO
    print"(A,F7.1)","The functional value of the demand value is",poly
end program


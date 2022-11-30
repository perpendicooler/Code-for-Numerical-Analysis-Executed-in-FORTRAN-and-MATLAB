program finiteForwardDifference
    real x(10),y(10,10)
    real i,j,n
    !print*,'Enter number of data'

    open(10,file="data.txt")!!--The data will read from the file named data--!!
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

end program

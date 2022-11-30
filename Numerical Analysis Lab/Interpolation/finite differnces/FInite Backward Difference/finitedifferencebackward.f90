program finiteBackwardDifference
    real x(10),y(10,10)
    real i,j,n
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
        print"(10f10.1)",x(i),(y(i,j),j=1,i)
    end do


end program

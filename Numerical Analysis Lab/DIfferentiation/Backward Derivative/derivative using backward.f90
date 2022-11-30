program backward_differentiation
    real x(10),y(10,10)
    real i,j,n,h,diff,sm,fact,p,term,second_diff
    !print*,'enter number of data'
    open(10,file="data.txt")
    read(10,*),n
   do i=1,n
        !print*,'X[',i,']='
        read(10,*),x(i)
        !print*,'y[',i,']='
        read(10,*)y(i,1)
    end do
    do j=2,n
        do i=1,n-j+10
            y(i+1,j)=y(i+1,j-1)-y(i,j-1)
        end do
    end do
    print*,'backward difference table:'
    do i=1,n
        print"(10f10.4)",x(i),(y(i,j),j=1,i)
    end do
    sm=0
    h=x(2)-x(1)
    !sm=sm/h
    do i=1,n
        term=y(n,i+1)/i
        sm=sm+term
    end do
    second_diff=0
    diff=sm/h
    do i=n,n
         second_diff=y(n,n-2)+y(n,n-1)+(11/12)*y(n,n)
    end do
    second_diff=(1/h**2)*second_diff
    write(*,"(A,F6.2,1x,A,F6.2)")"The first derivative of tabulated value on ",x(n),"is",diff
    write(*,"(A,F5.2,1x,A,F6.2)")"The second derivative of tabulated value on ",X(n),"is",second_diff

end program


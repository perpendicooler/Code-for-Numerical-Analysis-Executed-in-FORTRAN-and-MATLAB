program forward_differentiation
    real x(10),y(10,10)
    real i,j,n,h,diff,sm,fact,p,term,second_diff
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
    fact=1
    sm=0
    h=x(2)-x(1)
    !sm=sm/h
    do i=1,n
        term=y(1,i+1)/i
        sm=sm+fact*term
        fact=-fact
    end do
    diff=sm/h
    do i=1,1
         second_diff=y(1,i+2)-y(1,i+3)+(11/12)*y(1,i+4)-(5/6)*y(1,i+5)
         second_diff=second_diff*(1/h**2)
    end do
    write(*,"(A,F6.2,1x,A,F6.2)")"The first derivative of tabulated value on",x(1),"is",diff
    write(*,"(A,F6.2,1x,A,F6.2)")"The second derivative of tabulated value on",x(1), "is",second_diff

end program

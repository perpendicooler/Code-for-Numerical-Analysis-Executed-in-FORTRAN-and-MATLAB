program gauss_eli
    implicit none
    real A(20,20),ratio,v(20),sm
    integer i,j,n,k
    print *," Gauss elimination without pivot "
    !print *,"No. of row in augmented matrix"
    open(10,file="elements.txt")
    read(10,*)n
    !print *,"enter all elements in a row form"
    do i=1,n
        read(10,*)(A(i,j),j=1,n+1)
    end do

    print *," Given Matrix "
    do i=1,n
        write(*,"(4F10.2)")((A(i,j)),j=1,n+1)
    end do
    do i=1,n
        do j=1,n
            if(j>i)then
                ratio=A(j,i)/A(i,i)
                do k=1,n+2
                A(j,k)=A(j,k)-(ratio*A(i,k))
                end do
            end if
        end do
    end do
    print *," UPPER Triangular Matrix "
    do i=1,n
        write(*,"(4F10.2)")(A(i,j),j=1,n+1)
    end do
    v(n)=A(n,n+1)/A(n,n)
    do i=n-1,1,-1
        sm=0.
        do j=i+1,n
            sm=sm+A(i,j)*v(j)
        end do
        v(i)=(A(i,n+1)-sm)/a(i,i)
    end do

    print *," SOLUTIONS ARE "
    do i=1,n
        write(*,"(F10.2)")v(i)
    end do

end program


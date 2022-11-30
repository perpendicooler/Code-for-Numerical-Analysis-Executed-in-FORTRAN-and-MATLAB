program gauss_jordan
    implicit none

    real A(20,20),ratio
    integer i,j,n,k

    print *," Gauss Jordan Method "
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
            if(i.ne.j)then
                ratio=A(j,i)/A(i,i)
                do k=1,n+2
                A(j,k)=A(j,k)-(ratio*A(i,k))
                end do
            end if
        end do
    end do

    print *," Diagonal Matrix "
    do i=1,n
        write(*,"(4F10.2)")(A(i,j),j=1,n+1)
    end do
    print *," SOLUTIONS ARE "
    do i=1,n
        print"(F10.2)",A(i,n+1)/A(i,i)
    end do

end program


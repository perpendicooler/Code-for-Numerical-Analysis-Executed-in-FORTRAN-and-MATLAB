program gauss_seidel
    implicit none
    real A(20,20),ratio,v(20),sm,tol,maxit,tmp,er
    integer i,j,n,k,s
    print *," Gauss Seidel Method "
    !print *,"No. of row in augmented matrix"
    open(10,file="elements.txt")
    read(10,*)n
    read(10,*)tol
    read(10,*)maxit
    !print *,"enter all elements in a row form"
    do i=1,n
        read(10,*)(A(i,j),j=1,n+1)
    end do

    print *," Given Matrix "
    do i=1,n
        write(*,"(10F10.2)")((A(i,j)),j=1,n+1)
    end do
    do i=1,n
        s=0
        do j=1,n
            if (i.ne.j) then
                s=s+abs(A(i,j))
            end if
        end do
        if(abs(a(i,i)).le.s)then
            print*,"the Gauss Seidel method is not applicable."
            stop
        end if
    end do
    v=0
    print*,"Initially All the values of variable are stored as 0"
    print*,((v(i)),i=1,n)

    do i=1,maxit
        do j=1,n
            sm=0
            do k=1,n
                if(k.ne.j)then
                    sm=sm+A(j,k)*v(k)
                end if
            end do
            tmp=(A(j,n+1)-sm)/A(j,j)
            er=(abs(v(j)-tmp)/tmp)
            if(er.gt.tol)then
                v(j)=tmp
                print"(A,I2,2x,A,F10.5)","v",(j),"after iteration =",tmp
            end if

        end do

    end do
     print *, " Solution are "
      do i = 1, n
        print "(4F10.3)", v(i)
      end do
end program

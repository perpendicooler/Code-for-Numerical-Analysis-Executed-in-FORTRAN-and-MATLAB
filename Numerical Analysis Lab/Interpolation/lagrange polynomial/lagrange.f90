program lagrangian_polynomial
    real x(10),y(10),p,k,s
    integer i,j,n

!print *,'Number of terms?'
    open(10,file="lagrange_input.txt")
    read(10,*)n
    do i=1,n
        read(10,*),x(i)
        read(10,*),y(i)
    end do
    print*,"The given data values are:"
    do i=1,n
        print*," x ",i," = ",x(i)," y ",i,"=",y(i)

    end do
    print *,"enter the data point to calculate the value"
    READ(*,*)k!!--Enter the value 6 to get f(6)=5.66--!!

    do i=1,n
        p=1.0
        do j=1,n
            if(i .ne. j) then
            p=p*((k-x(j))/(x(i)-x(j)))
            end if
        end do
        s=s+(p*y(i))
    end do
print *,"the value of that point ",k ,"is",s

end program

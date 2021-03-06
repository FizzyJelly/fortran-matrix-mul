module naivemath

    implicit none

    public :: naivmull

    private :: mull_4, mull_8, mull_16

    interface naivmull
        procedure mull_4, mull_8, mull_16
    end interface

    contains

    function mull_4(A,B) result(C)
        implicit none
        real (kind=4), intent(in), dimension(:,:) :: A,B
        real (kind=4), allocatable, dimension(:,:) :: C
        integer :: i,j,k

        if(size(A,dim=2) /= size(B,dim=1)) then ! mat dimension n x m * m x p => n x p 
            stop "Matrix size does not match!"
        end if

        allocate(C(size(A,dim=1),size(B,dim=2)))

        ! initialize matrix

        do i=1, size(C,dim=1)
            do j=1, size(C,dim=2)
                C(i,j)=0
            end do
        end do

        do i=1, size(A,dim=1)
            do j=1, size(B,dim=2)
                do k=1,size(A,dim=2)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
        
    end function

    function mull_8(A,B) result(C)
        implicit none
        real (kind=8), intent(in), dimension(:,:) :: A,B
        real (kind=8), allocatable, dimension(:,:) :: C
        integer :: i,j,k

        if(size(A,dim=2) /= size(B,dim=1)) then ! mat dimension n x m * m x p => n x p 
            stop "Matrix size does not match!"
        end if

        allocate(C(size(A,dim=1),size(B,dim=2)))

        ! initialize matrix

        do i=1, size(C,dim=1)
            do j=1, size(C,dim=2)
                C(i,j)=0
            end do
        end do

        do i=1, size(A,dim=1)
            do j=1, size(B,dim=2)
                do k=1,size(A,dim=2)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
        
    end function

    function mull_16(A,B) result(C)
        implicit none
        real (kind=16), intent(in), dimension(:,:) :: A,B
        real (kind=16), allocatable, dimension(:,:) :: C
        integer :: i,j,k

        if(size(A,dim=2) /= size(B,dim=1)) then ! mat dimension n x m * m x p => n x p 
            stop "Matrix size does not match!"
        end if

        allocate(C(size(A,dim=1),size(B,dim=2)))
        
        ! initialize matrix

        do i=1, size(C,dim=1)
            do j=1, size(C,dim=2)
                C(i,j)=0
            end do
        end do

        do i=1, size(A,dim=1)
            do j=1, size(B,dim=2)
                do k=1,size(A,dim=2)
                    C(i,j) = C(i,j) + A(i,k)*B(k,j)
                end do
            end do
        end do
        
    end function


end module
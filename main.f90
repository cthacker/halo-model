program test
use halo
implicit none

real(dp) :: m,rombint,kg,mm
real, allocatable,dimension(:) :: k,Pk
integer :: i

z = 0.1
m = 1.0


allocate(k(mpts),Pk(mpts))
!z = 0.0
!call linear_pk(k,Pk)
!open(unit=10,file='matterpower0.dat',form='formatted',status='unknown')
!do i=1,mpts
!    write(10,*) k(i),Pk(i)
!end do
!close(10)

!z = 0.1
!call linear_pk(k,Pk)
!open(unit=10,file='matterpower01.dat',form='formatted',status='unknown')
!do i=1,mpts
!    write(10,*) k(i),Pk(i)
!end do
!close(10)


!z = 1.0
!call linear_pk(k,Pk)
!open(unit=10,file='matterpower1.dat',form='formatted',status='unknown')
!do i=1,mpts
!    write(10,*) k(i),Pk(i)
!end do
!close(10)

z = 10.0
!call linear_pk(k,Pk)
!open(unit=10,file='matterpower10.dat',form='formatted',status='unknown')
!do i=1,mpts
!    write(10,*) k(i),Pk(i)
!end do
!close(10)

!z = 0.1
!write(*,*) nu(m)
!z = 10
!write(*,*) nu(m)
!z = 0.1
!z = 0.1
!m = 1e6
!write(*,*) fnu(m)
!z = 10
!write(*,*) fnu(m)


!z = 0.1
!m = 1e6
!write(*,*) ukm(z,m)
!z = 10
!write(*,*) ukm(z,m)


!cz = 1.0
!kk = 0.1
!write(*,*) P1h(kk)

!z = 1.0
!kk = 0.1
!write(*,*) P2h(kk)

!z = 0.0
!call linear_pk(k,Pk)
!open(unit=10,file='matterpower0.dat',form='formatted',status='unknown')
!do i=1,mpts
!    write(10,*) k(i),Pk(i)
!end do
!close(10)

!open(unit=10,file='hey.dat',form='formatted',status='unknown')
!do i=1,mpts
!    kk = k(i)
!    write(10,*) kk,P1h(kg),P2h(kg)
!end do
!close(10)

open(unit=10,file='sig_22.dat',form='formatted',status='unknown')
kg = 2
do i = 1,100
m = 10**kg
mm = 1.0e9
write(10,*) m, sig_2(m)
kg = kg+0.15
end do
close(10)







end program test

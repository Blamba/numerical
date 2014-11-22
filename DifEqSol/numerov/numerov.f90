program numerov
implicit real*8 (a-h,o-z)
parameter(n=1000)
external dff
dimension y(n), x(n), z(n)
dimension q(2)

a=0.
b=1.
y0=1.
y00=1.
h=(b-a)/(n-1)
y(1)=y0
y(2)=(dexp(-h)+5.*dexp(h)-2.*dcos(h))/4.

open(10, file='numerov')
open(11, file='resh')
open(12, file='merson')

do i=1,n
  x(i)=a+h*(i-1)
enddo
do i=3,n
  r=g(x(i))-2.*g(x(i-1))+g(x(i-2))
  q1=(1.-h*h*f(x(i))/12.)
  q2=(1.-h*h*f(x(i-1))/12.)
  q3=(1.-h*h*f(x(i-2))/12.)
  y(i)=(2.*y(i-1)*q2-y(i-2)*q3+h*h*(f(x(i-1))*y(i-1)+g(x(i-1))+r/12.))/q1
enddo
do i=1,n
  write(10,*) x(i),y(i)
enddo
do i=1,n
  write(11,*) x(i),(dexp(-x(i))+5.*dexp(x(i))-2.*dcos(x(i)))/4.
enddo
do i=1,n,100
  write(*,*) abs(y(i)- (dexp(-x(i))+5.*dexp(x(i))-2.*dcos(x(i)))/4.)
enddo

write(*,*)

z(1)=1.
do i=2,10
  xn=x(i-1)
  xnd=x(i)
  acc=1.d-10
  hmin=1.d-2
  hh=h/10.
  m=2
  q(1)=y0
  q(2)=y00
  call merson(xn,xnd,acc,hh,hmin,m,q,dff)
  z(i)=q(1)
enddo
do i=1,n
  write(12,*) x(i),z(i)
enddo
do i=1,n,100
  write(*,*) abs(z(i)- (dexp(-x(i))+5.*dexp(x(i))-2.*dcos(x(i)))/4.)
enddo

close(10)
close(11)
close(12)
end

real*8 function f(x)
real*8 x
f=1
end

real*8 function g(x)
real*8 x
g=dcos(x)
end

subroutine dff(x,y,dy)
  implicit real*8 (a-h,o-z)
  dimension y(2),dy(2)
  dy(1)=y(2)
  dy(2)=y(1)
  print *, x, y, dy

  return
end

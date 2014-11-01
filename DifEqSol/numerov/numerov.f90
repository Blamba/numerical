program numerov
parameter(n=1000)
real*8 f,x,y,a,b,h,delta,y0,y00
dimension y(n), x(n)

a=1.
b=6.
y0=1.
y00=1.
h=(b-a)/(n-1)
y(1)=y0
y(2)=y(1)+2.*h*y00

open(10, file='numerov')
open(11, file='resh')

do i=1,n
  x(i)=a+h*(i-1)
enddo

do i=3,n
  y(i)=(2.*y(i-1)-y(i-2)*(1.-h*h*f(x(i-2))/12.)+5.*h*h*y(i-1)*f(x(i-1))/6.)/(1.-h*h*f(x(i))/12.)
enddo

do i=1,n
  write(10,*) x(i),y(i)
enddo

do i=1,n
  write(11,*) x(i),2.*(x(i)*x(i))/3.+1./(3.*x(i))
enddo

do i=1,n,100
  write(*,*) abs(y(i)- 2.*(x(i)*x(i))/3.-1./(3.*x(i)))
enddo

close(10)
close(11)
end

real*8 function f(x)
real*8 x
f=1./(x*x)
end

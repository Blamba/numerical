program rungekutt
parameter(n=1000)
real*8 f,x,y,a,b,h,k1,k2,k3,k4,delta
dimension y(n), x(n)

y(1)=4.
a=0.
b=3.
h=(b-a)/(n-1)
open(10, file='rungekutt')
open(11, file='exp')

do i=1,n
  x(i)=h*(i-1)
enddo

do i=2,n
  k1=f(x(i-1),y(i-1))
  k2=f(x(i-1)+h/2.,y(i-1)+h*k1/2.)
  k3=f(x(i-1)+h/2.,y(i-1)+h*k2/2.)
  k4=f(x(i-1)+h,y(i-1)+h*k3)

  y(i)=y(i-1)+h*(k1+2.*k2+2.*k3+k4)/6.
end do

do i=1,n
  write(10,*) x(i),y(i)
enddo

do i=1,n
  write(11,*) x(i),4.*dexp(x(i)*x(i)/2.)
enddo

do i=1,10
  write(*,*) (abs(4.*dexp(x(i*100)*x(i*100)/2.)-y(i*100)))
enddo

write(*,*) (h**5)
close(10)
close(11)
end

real*8 function f(x,y)
real*8 x,y
f=x*y
end

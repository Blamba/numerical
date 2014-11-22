program merson1
  parameter(n=2000)
  implicit real*8 (a-h,o-z)
  dimension y(2)
  external dff

  open (33, file='data.dat')
  y10=1.d0
  y20=0.d0
  a=0.d0
  b=20.d0
  h=(b-a)/n
  y(1)=y10
  y(2)=y20
  xn=a
  xnd=a+h
  h0=1.d-4

  call merson(xn,xnd,1.d-4,h0,1.d-6,y,dff)
  Y1=y(1)/(1-(h**2)/12.*f(h+a))
  Y0=y10/(1-(h**2)/12.*f(h))

  do i=2,n
    write(33,*) h*(i-1)+a,y(1),(y(1)-f0(h*(i-1)+a))/f0(h*(i-1)+a)
    Y2=2.*Y1-Y0+(h**2)*f(h*(i-1)+a)*y(1)
    y(1)=Y2/(1-(h**2)/12.*f(h*i+a))
    Y0=Y1
    Y1=Y2
  end do
  write(33,*) b,y(1),(y(1)-f0(h*n+a))/f0(h*n+a)

end

real*8 function f(x)
real*8 x
f=2+4*x*x
end

real*8 function f0(x)
real*8 x
f0=dexp(x*x)
end

subroutine dff(x,y,dy)
  real*8 x,y,dy,f
  dimension y(2),dy(2)
  dy(1)=y(2)
  dy(2)=f(x)*y(1)
end

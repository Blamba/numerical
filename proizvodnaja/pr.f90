	program proizvodnaya
	parameter(n=2001)
	real*8 x,f,a,b,h,y
	dimension x(n)
	dimension f(n)
	open(10, file='proizvodnaya')

	a=-10
	b=10
	h=(b-a)/n
	x(1)=a

	do i=2,n
	x(i)=x(i-1)+h
  end do

	do i=2,n,3
	f(i-1)=(-3*y(x(i-1))+4*y(x(i))-y(x(i+1)))/2/h
	f(i)=(y(x(i+1))-y(x(i-1)))/2/h
	f(i+1)=(y(x(i-1))-4*y(x(i))+3*y(x(i+1)))/2/h
	write(10,*) x(i-1),f(i-1)
	write(10,*) x(i),f(i)
	write(10,*) x(i+1),f(i+1)
  end do

	end


	real*8 function y(x)
	real*8 x
	y=1/(x*x+4)
  end

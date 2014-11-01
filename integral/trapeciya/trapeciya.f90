	program integral
	parameter(n=1000)
	real*8 x,y,a,b,f,h,fa
	dimension x(n)

	a=0.
	b=3.
	h=(b-a)/(n-1)
	fa=1000./3.
	x(1)=a

	do i=2,n
	x(i)=a+h*(i-1)
  end do

	f=(y(a)-y(b))*h/2
	do i=1,n
	f=f+y(x(i))*h
  end do

	write(*,*)	f
	write(*,*)	fa
	write(*,*)  abs(f-fa)
	write(*,*)  h*h*(b-a)*2/12
	end

	real*8 function y(x)
	real*8 x
	y=x*x
  end

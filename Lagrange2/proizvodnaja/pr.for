	real*8 function y(x)
	real*8 x
	y=sin(x)
	return
	end
	
	real*8 function y1(x)
	real*8 x
	y1=cos(x)
	return
	end

	real*8 u, h, z, z1
	
	u=atan(1.0)
	h=1
	do i=1,20
	z=(y(u-2*h)-8*y(u-h)+8*y(u+h)-y(u+2*h))/12/h
	z1 = (y(u+h)-y(u-h))/2/h
	write(*,*) h, z-y1(u), z1-y1(u)
	h =h/2
	end do
	end

	 
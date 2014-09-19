	real*4 x,z,y
	real*8 x1,z1,y1
	z=1.
	y=1.
	do while (z.ne.x)
	y=y/10
	x=z+y
	end do
	write(*,*)y
	z1=1.
	y1=1.
	do while (z1.ne.x1)
	y1=y1/10
	x1=y1+z1
	end do
	write(*,*)y1
	end
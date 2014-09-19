	
	real x1,x2,x3,rezz, f(10), x, z, rez
	integer d
	do i=1,10
c	write(*,*) '?'
c	read(*,*) z
c	f(i)=z
	f(i)=sin(i*1.)
	enddo
	
	write(*,*) 'x?'
	read(*,*) x
	
	d=x
c	print *, d
	
	if (d<=8) then
	x1=f(d)
	x2=f(d+1)
	x3=f(d+2)
	else
	d=8
	x1=f(d)
	x2=f(d+1)
	x3=f(d+2)
	endif
	

	r1=(x-x2)*(x-x3)/((x1-x2)*(x1-x3))
	r2=(x-x1)*(x-x3)/((x2-x3)*(x2-x1))
	r3=(x-x1)*(x-x2)/((x3-x2)*(x3-x1))
	rez=f(d)*r1+f(d+1)*r2+f(d+2)*r3
	print *, rez
	end
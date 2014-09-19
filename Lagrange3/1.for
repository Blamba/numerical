	parameter (N=10,m=3,pi=5.*3.1415927)
	integer l,max
	real*4 x(n),y(n),xn,yn,f
		Do i=0,n
		x(i) = i*pi/n
		y(i) = sin(x(i))
		end do
	max = 101
	open( file = 'data.dat',unit=33,status='unknown')
	DO l=0,max
	xn = (pi*l/max)
	i = 1		
		do while (xn > x(i)) 
	        i=i+1
		end do
	i1 = i - m/2
		if (i1<0) then
		i1 = 0
		end if
		
		if (i1+m-1>n) then
		i1 = n-m +1
		end if
	yn = 0.
		do j = 0,m-1
		f=1.	
			do i = 0,m-1
		        if (j.NE.i) then
			f = f*(xn-x(i1+i))/(x(j+i1)-x(i1+i))
			end if
			end do
		yn = yn + f*y(j+i1)
		end do
	write(33,*)xn,sin(xn),yn, abs(sin(xn)-yn),i1 
	end do

	end		
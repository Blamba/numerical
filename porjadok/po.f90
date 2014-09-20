	real*8 b,c,b1,c1

	c=5.
	b=7.
	i=0

	do while (b.ne.c)
  b=b/2
	c=c/2
	i=i+1
	end do

	write(*,*)i

	c1=5.
	b1=7.
	j=0

	do while (c1.ne.b1)
	b1=b1*2
	c1=c1*2
	j=j+1
	end do

	write(*,*)j

	end

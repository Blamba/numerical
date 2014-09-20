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

	m=2
	k=3
	j=0

	do while (m.ne.k)
	m=m*5
	k=k*7
	j=j+1
	end do

	write(*,*)j

	end

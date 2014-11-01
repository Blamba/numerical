	real*4 b,c,r,p


	c=5.
	b=7.
	i=0

	do while (b.ne.c)
  b=b/10
	c=c/10
	i=i+1
	end do

	write(*,*)  -i

	r=5
	p=7
	j=0

	do while (r.ne.p)
	r=r*10
	p=p*10
	j=j+1
	end do

	write(*,*)j

	end

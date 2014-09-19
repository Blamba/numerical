	Program Interpolation
	parameter (xx=2.5)
	parameter (n=10)
	dimension X(n), Y(n)
	
	do 3 j=1,n
		X(j)=j
		Y(j)=j**4
3	continue
	s=0
	do 2 m=1, n
	
	p1=1

	do 1 i=1, n
		if (i.NE.m) P1=P1*(xx-X(i))/(X(m)-X(i))
1	continue

	s=s+Y(m)*P1
2	continue
	write (*,*), s
	write (*,*), 'Real', xx**4
	end
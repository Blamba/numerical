	real*4 A,B,c
	real*8 a1,b1,c1
	c = 8.
	b = 1.
	a = 1.		
		Do While (a .NE. c)
		b = b/10
		c = a + b
		END DO
	Write(*,*)b
	c1 = 8.
	b1 = 1.
	a1 = 1.		
		Do While (a1 .NE. c1)
		b1 = b1/10
		c1 = a1 + b1
		END DO
	Write(*,*)b1

	End

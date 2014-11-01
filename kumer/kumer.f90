program kumer
  real*8 sum,x, sum1,eps,t,y
  x=0.
  sum=0.
  p=0
  y=1.0
  t=0.
  eps=0.
  do while (1/(x**2+1)-1/((x+1)**2+1) .ge. 1.d-18)
    y=1./(x**2+1.)-eps
    x=x+1
    t=sum+y
    eps=(t-sum)-y
    sum=t
    p=p+1
  enddo

  i=1
  sum1=(4.*atan(1.))**2/6.-(4.*atan(1.))**4/90.
  p1=0
  y=1.
  t=0.
  eps=0.
  do while (y .ge. 0.000001)
    y=1./((i**2+1.)*(i)**4)-eps
    i=i+1
    t=sum1+y
    eps=(t-sum1)-y
    sum1=t
    p1=p1+1
  enddo
  write(*,*) p-1, sum-1
  write(*,*) p1, sum1
end

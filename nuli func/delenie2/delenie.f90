program integral
real*8 a,b,y,e,d,q
e=0.000001
d=0.1
a=0.
b=2.
n=1
q=b
do while (((b-a) .gt. e).or.(abs(y(q)/y(b)) .ge. d))
  q=(a*y(b)-b*y(a))/(y(b)-y(a))
if(y(q)*y(a) .gt. 0) then
  a=q
else
  b=q
end if

n=n+1
end do
if (y(e/2)/y(b) .le. d) then
write(*,*)  q
else
  write(*,*) b
end if
write(*,*) n
end

real*8 function y(x)
real*8 x
y=exp(x)-4
end

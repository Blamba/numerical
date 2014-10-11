program integral
parameter(e=0.000001)
parameter(d=0.001)
real*8 a,b,y,l,aa,bb,cc,x1,x2,xx,delta

a=0.
b=4.
n=1
do while ((b-a) .ge. e)

  l=(a+b)/2.

  aa=(y(a)*(l-b)-a*(y(l)-y(b))+b*y(l)-l*y(b))/delta(a,b,l)

  bb=(a*a*(y(l)-y(b))-y(a)*(l*l-b*b)+l*l*y(b)-b*b*y(l))/delta(a,b,l)

  cc=(a*a*(l*y(b)-b*y(l))-a*(l*l*y(b)-b*b*y(l))+y(a)*(b*l*l-l*b*b))/delta(a,b,l)

  x1=(-bb-sqrt(bb*bb-4.*aa*cc))/aa/2.

  x2=(-bb+sqrt(bb*bb-4.*aa*cc))/aa/2.

  if ((x2 .ge. a).and.(x2 .le. b)) then
    xx=x2
  else
    xx=x1
  end if

if(y(xx)*y(a) .gt. 0) then
  a=xx
else
b=xx
end if
n=n+1
end do
if (y(e/2)/y(b) .le. d) then
write(*,*)  xx
else
 write(*,*) b
end if
write(*,*) n
end

real*8 function y(x)
real*8 x
y=exp(x)-4
end

real*8 function delta(p,q,l)
real*8 p,q,l
delta=(p*p*(l-q)-p*(l*l-q*q)+l*l*q-q*q*l)
end

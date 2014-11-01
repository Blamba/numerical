program integral
parameter(n=1001)
real*8 x,y,a,b,f,h,fa
dimension x(n)

a=0.
b=5.
h=(b-a)/(n-1)
fa=5**5./5.
x(1)=a

do i=2,n
x(i)=a+h*(i-1)
end do

f=(y(a)-y(b))*h/3
do i=2,n
f=f+(3+(-1)**i)*y(x(i))*h/3
end do

write(*,*)	f
write(*,*)	fa
write(*,*)  abs(f-fa)
write(*,*)  h*h*h*h*(b-a)*24/180
end

real*8 function y(x)
real*8 x
y=x*x*x*x
end

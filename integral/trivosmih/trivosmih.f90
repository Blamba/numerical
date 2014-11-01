program integral
parameter(n=103)
real*8 x,y,a,b,f,h,fa
dimension x(n)

a=0.
b=3.
h=(b-a)/(n-1)
fa=3**5./5.
x(1)=a

do i=2,n
x(i)=a+h*(i-1)
end do

f=(y(a)-y(b))*h*3/8
do i=2,n,3
f=f+(3*(y(x(i))+y(x(i+1)))+2*y(x(i+2)))*3*h/8
end do

write(*,*)	f
write(*,*)	fa
write(*,*)  abs(f-fa)
write(*,*)  h*h*h*h*(b-a)*24*3/80
end

real*8 function y(x)
real*8 x
y=x*x*x*x
end

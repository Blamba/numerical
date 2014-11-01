program integral
real*8 y,a,b,f,fa
a=0
b=2
f=(b-a)*(y((a+b)/2.-(b-a)/(2.*sqrt(3.)))+y((a+b)/2+(b-a)/(2.*sqrt(3.))))/2.
fa=2**5/5.

write(*,*)	f
write(*,*)	fa
write(*,*)  abs(f-fa)
write(*,*)  ((b-a)**3)/12.
end

real*8 function y(x)
real*8 x
y=x*x*x*x
end

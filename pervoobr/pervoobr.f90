program pervoobr
external fun
parameter(n=1001)
dimension yy(n), zz(n)
a=0.
b=2.
h=(b-a)/(n-1)

do i=1,n
  x=(i-1)*h
  yy(i)=fun(x)
enddo

open(10, file='pervoobr')

do i=1,n
call qsf(h,yy,zz,n)
write(10,*) (i-1)*h, zz(i)
enddo

close(10)
end

function fun(x)
fun=x
return
end

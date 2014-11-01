program dint
external fctx, fcty
real*8 fcty,fctx,ax,bx,sx
ax=0.
bx=1.
call dqg32(ax,bx,fctx,sx)
write(*,*) sx
end

real*8 function fctx(x)
external fcty
common/help/xx
real*8 x,xx,ay,by,f1,f2,sy,fcty
xx=x
ay=f1(x)
by=f2(x)
call dqg8(ay,by,fcty,sy)
fctx=sy
return
end

real*8 function fcty(y)
common/help/xx
real*8 x,xx,y
x=xx
fcty=((x+y)*(x-y))**2
return
end

real*8 function f1(x)
real*8 x
f1=0.5*sqrt(1-x*x)
return
end

real*8 function f2(x)
real*8 x
f2=sqrt(1-x*x)
return
end

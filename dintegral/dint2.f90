program dint
external fctx, fcty
real*8 fcty,fctx,ay,by,sy
ay=0.
by=1.
call dqg32(ay,by,fcty,sy)
write(*,*) 4.*sy
end

real*8 function fcty(y)
external fctx
common/help/yy
real*8 y,yy,ax,bx,f1,f2,sx,fctx
yy=y
ax=f1(y)
bx=f2(y)
call dqg8(ax,bx,fctx,sx)
fcty=sx
return
end

real*8 function fctx(x)
common/help/yy
real*8 x,yy,y
y=yy
fctx=x*x*y*y
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

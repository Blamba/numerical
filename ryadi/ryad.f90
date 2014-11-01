program ryad
real*4 sum,eps,y,x,t
sum=0.
eps=0.
y=0.
t=0.
x=10**9
do i=1,10**9
   y=1/x-eps
   t=sum+y
   eps=(t-sum)-y
   sum=t
end do
write(*,*) sum
end

      program lagrange
      parameter (n=11)

      real*8 chislitel,znamenatel,a,b,s,x,f,absc,func1,func2
      dimension a(n)
      dimension b(n)

      n1=1000
      s=2
      a(1)=-10

      do 6 i=2, n
      a(i)=a(i-1)+s
6     continue  

      do 5 i=1, n
      b(i)=1/(a(i)*a(i)+4)
5     continue

      open(10, file='polynom')

      open(11, file='polynom1')

      do 4 i=-n1,n1
      absc=i*0.01
      func1=1/(absc*absc+4)
      func2=0.0

      do 1  k=1,n
      func2=func2+b(k)*(chislitel(a,n,k,absc)/znamenatel(a,n,k))
1     continue

      write(10,*) absc,func1

      write(11,*) absc,func2

4     continue
      close(10)
      close(11)

      end program

      real*8 function chislitel(a,n,m,x)
      real*8 a,x
      dimension a(11)
      chislitel=1.
      do 2  i=1,n
      if(i.NE.m) then
      chislitel=chislitel*(x-a(i))
      end if
2     continue
      end

      real*8 function znamenatel(a,n,m)
      real*8 a
      dimension a(11)
      znamenatel=1.
      do 3 i=1,n
      if(i.NE.m) then
      znamenatel=znamenatel*(a(m)-a(i))
      end if
3     continue
      end

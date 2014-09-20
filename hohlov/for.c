        program aproximate
        dimension a(100), b(100), c(100)
        real function F(x)
        real x0,x1,x2
        PRINT *, 'x0?'
        READ *, x0
        PRINT *, 'x1?'
        READ *, x1
        PRINT *, 'x2?'
        READ *, x2
        F(x)=sin(x0)*(x-x1)*(x-x2)/(x0-x1)/(x0-x2)+sin(x1)*(x-x0)*(x-x2)/(x1-x0)/(x1-x2)+sin(x2)*(x-x0)*(x-x1)/(x2-x1)/(x2-x0)
      pi=4.*atan(1.)
      h=4*pi/100
      do 1, i=1, 100
      a(i)=h*i
      b(i)=sin(a(i))
      c(i)=F(a(i))
1     continue
      open (10, File='mydate')
      do 2, i=1, 100
      write (10, *) x(i), y(i),c(i)
2     continue
      close (10)
      end

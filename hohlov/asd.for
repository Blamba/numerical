      PROGRAM graf
      dimension y(100), x(100)
      pi=4.*atan(1.)
      h=4*pi/100
      do 1, i=1, 100
      x(i)=h*i
      y(i)=sin(x(i))
1     continue
      open (10, File='HOH')
      do 2, i=1, 100
      write (10, *) x(i), y(i)
2     continue
      close (10)
      end

      PROGRAM C
      dimension y(1000), x(1000)
      pi=4.*atan(1.)
      h=pi/1000
      do 1, i=1, 1000
      x(i)=3*h*i
      y(i)=sin(x(i))
1     continue
      open (10, File='mydate')
      do 2, i=1, 1000
      write (10, *) x(i), y(i)
2     continue
      close (10)
      end

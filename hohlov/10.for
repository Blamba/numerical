        program C
        pi=4.*atan(1.)
        dimension x(100), f(100)
        h=x/100
        SUMMA=0.
        DO 1, i=1,100
        x(i)=h*i
        f(i)=h*SIN(i*h)
        SUMMA=SUMMA+f(i)
   1  continue
      do 1, i=1, 100
      x(i)=h*i
      y(i)=sin(x(i))
1     continue
      open (10, File='mydate')
      do 2, i=1, 100
      write (10, *) x(i), y(i)
2     continue
      close (10)
      end

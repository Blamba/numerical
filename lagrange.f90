    function koef(x) result(w)
      dimension q(10)
      real, intent(inout) :: x(:)
      real w


      b=5
      a=0
      h=(b-a)/10
      f=1
      g=1
      w=0
      q(1)=0

      do i=2, 12
        q(i)=q(i-1)+hh
      end do

      do k=1, 10

       do i=1, 10
        if (i .NE. k-1) then
        f=f*(x-q(i+1))
      end if
      end do

       do i=1, 10
        if (i .NE. k) then
        g=g*(q(k)-q(i))
      end if
       end do
       w=w+f/g*sin(q(k))
      end do
      end function koef


      program asd

      open (12, FILE='lagrange')
      a=0
      b=5
      hh=(a-b)/2500

      do i=1, 2500
        x=x+hh
       write(12, *) x, koef(x)
      end do
      close(12)

      end program asd

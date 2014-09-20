      program asd

      pi=4.*ATAN(1.)
      h=pi/1000
      open (10, FILE='graph')  
      open (11, FILE='graphcos')            
      do i=1,1000
      x=x+h
      sum=sum+sin(x)*h
1     end do
      print *,sum
          
      do i=1,2500
      q=q-h
      write (10,*) q, sin(q)
      end do
            
      do i=1,2500
      t=t+h
      write (10,*) t, sin(t)
      end do
      close (10)   
      
      
      do i=1,1000
      w=w+h
           
      do j=1,1000
      r=r+w/(i*1000)
      sumcos=sumcos+sin(r)*w/(i*1000)
      end do
      
      write (11,*) w, sumcos
      end do 
      close (11)
             
      end

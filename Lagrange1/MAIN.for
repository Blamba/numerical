      PARAMETER (N=10)
      REAL*8 MULT1,MULT2,A,B,STEP,X,F,ABC,ORD1,ORD2,N1
      DIMENSION A(N)
      DIMENSION B(N)      
      N1=1000
      STEP=1.
      F=0.0
      ORD2=0.0
      DO 5 I=1, N
      A(I)=I*STEP
      B(I)=SIN(I*STEP)
5     CONTINUE
C     WRITE(*,*) 'X = '
C     READ(*,*) X
C     DO 10 I=1,N 
C     F=F+B(I)*(MULT1(A,N,I,X)/MULT2(A,N,I))
C10   CONTINUE
C     WRITE(*,*) F
C     WRITE(*,*) SIN(X)
      OPEN(FILE='FILEDATA.DAT',UNIT=33)
      DO 15 I=1,N1 
      F=0.0
      ABC=I*0.01
      ORD1=SIN(ABC)
      ORD2=0.0
      DO 10 K=1,N 
      ORD2=ORD2+B(K)*(MULT1(A,N,K,ABC)/MULT2(A,N,K))
10    CONTINUE  
      WRITE(33,*) ABC,ORD1,ORD2
15    CONTINUE
      CLOSE(33)
      END
      
      REAL*8 FUNCTION MULT1(A,N,T,X)
      INTEGER T,N
      REAL*8 A,X
      DIMENSION A(20)
      MULT1=1.
      DO 20 I=1,N
      IF(I.NE.T) THEN
      MULT1=MULT1*(X-A(I))
      END IF
20    CONTINUE
      END
      
      REAL*8 FUNCTION MULT2(A,N,T)
      INTEGER T,N
      REAL*8 A
      DIMENSION A(20)
      MULT2=1.
      DO 30 I=1,N
      IF(I.NE.T) THEN
      MULT2=MULT2*(A(T)-A(I))
      END IF
30    CONTINUE
      END          
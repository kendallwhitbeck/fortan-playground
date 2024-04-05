      Program ArrayTester2
      IMPLICIT NONE
      INTEGER                     :: I,J
      INTEGER, PARAMETER          :: IMAX = 5
      INTEGER, PARAMETER          :: JMAX = 5
      REAL, DIMENSION(IMAX, JMAX) :: A, B
      REAL                  :: Scalar = 3.0
      CHARACTER(16)         :: FMTA = '("A = ",5F5.2/)'
      CHARACTER(16)         :: FMTB = '("B = ",5F5.2/)'

!     Element by element 
      DO J = 1, JMAX
         DO I = 1, IMAX
            A(I,J) = Scalar
         END DO
      END DO
      
!    Whole array addition
      B = 5.0
      
!  Write results to standard output using nested implied do loops
      WRITE(*,FMTA)((A(I,J), I = 1,5), J=1,5)
      WRITE(*,*)
      WRITE(*,FMTB)((B(I,J), I = 1,5), J=1,5)
      READ(*,*)
      STOP 'normal termination'
      END PROGRAM ArrayTester2

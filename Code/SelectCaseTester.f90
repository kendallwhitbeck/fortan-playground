Program SelectCaseTester

! Declaration Section
IMPLICIT NONE
Character(Len=1)  :: Scale
Character(Len=20) :: Msg = 'This is good'
Character(Len=*), PARAMETER :: FMT = '(A20)'
Integer                     :: Temp

! Execution Section
WRITE(*,"('Enter Temperature Scale: F-Farenheiht, C-Celcius :')")
READ(*,*) Scale
WRITE(*,100)
100 FORMAT('Enter the Temperature')
READ(*,*) Temp

outer:SELECT CASE (SCALE)
   CASE('F') outer
       innerF: SELECT CASE (Temp) 
          CASE(:31) innerF
             WRITE(*,*) 'Brrrrrrr'
          CASE(32) innerF
             WRITE(*,*) "It's Frezzing"
          CASE(33:60) innerF
             WRITE(*,*) "It's cold"
          CASE(61:67) innerF
             WRITE(*,*) "It's cool"
          CASE(68:75) innerF
             WRITE(*,FMT) "It's confortable Today as opposed to yesterday"
          101 Format(A20)
          CASE(76:90) innerF
             WRITE(*,*) "It's warm"
          CASE(91:) innerF
             WRITE(*,*) "Ok, It's Hot"
          CASE DEFAULT innerF
             WRITE(*,*) 'Something Wrong Here (F)'
       END SELECT innerF
   CASE('C') outer
       innerC: SELECT CASE (Temp)
          CASE(:-1) innerC
             WRITE(*,*) 'Brrrrrrr'
          CASE(0) innerC
             WRITE(*,*) "It's Frezzing"
          CASE(1:20) innerC
             WRITE(*,*) "It's cold"
          CASE(21:33)innerC
             WRITE(*,*) "It's warm"
          CASE(34:) innerC
             WRITE(*,*) "Ok, It's Hot"
          CASE DEFAULT innerC
             WRITE(*,*) 'something wrong here (C)'
       END SELECT innerC
   CASE DEFAULT outer
       WRITE(*,*) ' ERROR - Improper Temp Scale Selected '
END SELECT outer
WRITE(*,*) msg
READ(*,*)
END PROGRAM SelectCaseTester
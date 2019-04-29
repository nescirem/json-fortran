!*****************************************************************************************
!> author: nescirem
!  date: 4/28/2019
!
!  Entry point for the assemblaged example of json control file.
!
    
#ifdef ASSEMBLAGE
program jc_example_usage
    
    !use, intrinsic :: iso_fortran_env,  only: error_unit, output_unit
    use jc_grid_control_mod,            only: jc_grid_control
    use common_data,                    only: error_code,dir,filename
    use functions,                      only: clean_str
    
    implicit none
    
    dir = clean_str( '  ../files/inputs/' )
    filename = clean_str(  ' case_control.json ' )
    
    ! input grid control
    call jc_grid_control
    
    ! parse grid file
    !call read_cgns
    
    
end program jc_example_usage
#endif

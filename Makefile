#Makefile
#Edit for your compiler


# Intel compiler
F90C = ifort
FFLAGS = -openmp -O2 -ip -W0 -WB -fpp2 -vec_report0 -I../camb

#Gfortran compiler: if pre v4.3 add -D__GFORTRAN__
F90C = gfortran
FFLAGS = -O2  -I../camb

F90FLAGS      = $(FFLAGS)
FC            = $(F90C)
CLSLIB  = -L../camb -lcamb 
OBJ       =  qromb.o halo.o main.o

default: halo
all: halo

halo: $(OBJ) ../camb/libcamb.a
	$(F90C) -o halo.x $(OBJ) $(F90FLAGS) $(CLSLIB) 

%.o: %.f90
	$(F90C) $(F90FLAGS) -c $*.f90

%.o: %.F90
	$(F90C) $(F90FLAGS) -c $*.F90

clean:
	-rm -f *.o *.a *.dat *.x core *.mod

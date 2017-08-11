#!/usr/bin/gnuplot
# GNUPLOT file generated by <PotentialAvenger.h> -- MH[DCML] (2010)
# Global energies
set xlabel "time (s)"
set ylabel "energy (J)"
set terminal svg size 1200, 800

set output './pngFiles/enrgSpr.svg'
plot './datFiles/energies.dat' usi 1:2 ti 'Wspr' w l
set output './pngFiles/enrgDissip.svg'
plot './datFiles/energies.dat' usi 1:3 ti 'Wdissip' w l, \
     './datFiles/energies.dat' usi 1:8 ti 'local' w l, \
     './datFiles/energies.dat' usi 1:9 ti 'non-local' w l 

set output './pngFiles/enrgExt.svg'
plot './datFiles/energies.dat' usi 1:4 ti 'Wext' w l

set output './pngFiles/enrgKin.svg'
plot './datFiles/energies.dat' usi 1:5 ti 'Wkin' w l

set ylabel "Energy Balance Check"
set output './pngFiles/enrgBalance.svg'
plot './datFiles/energies.dat' usi 1:(abs($7)) ti 'Wsum' w l,\
     './datFiles/energies.dat' usi 1:6 ti '0.01 * Wmax' w l

set ylabel "J/s"
set output './pngFiles/enrgAll.svg'
plot './datFiles/energies.dat' usi 1:2 ti 'Wspr' w l ,\
     './datFiles/energies.dat' usi 1:3 ti 'Wdis' w l ,\
     './datFiles/energies.dat' usi 1:4 ti 'Wext' w l ,\
     './datFiles/energies.dat' usi 1:5 ti 'Wkin' w l ,\
     './datFiles/energies.dat' usi 1:(abs($2+$3+$5)) ti 'Wsum' w l

set output './pngFiles/phidotC.svg'
set ylabel "damage front speed phidot/c"
plot for [i=10:100] './datFiles/energies.dat' usi 1:i title "Segment ".(i-9) w l 

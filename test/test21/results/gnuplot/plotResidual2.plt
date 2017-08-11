#!/usr/bin/gnuplot
# GNUPLOT file generated by <PotentialAvenger.h> -- MH[DCML] (2010)
set title "Residual vs. Time"
set xlabel "Time"
set ylabel "R0"
set terminal svg size 1200, 800

set output './pngFiles/residualMax.svg'
plot './datFiles/residual2.dat' using 1:2 ti '' with points;

set xlabel "log10(R1/Yc)"
set ylabel "log10(R2/Yc,R3/Yc,R4/Yc)"
set output './pngFiles/residualMaxr1r2.svg'
plot './datFiles/residual2.dat' using (log10(abs($2))):(log10(abs($2))) ti 'R1' with points, \
     './datFiles/residual2.dat' using (log10(abs($2))):(log10(abs($3))) ti 'R2' with points, \
     './datFiles/residual2.dat' using (log10(abs($2))):(log10(abs($4))) ti 'R3' with points, \
     './datFiles/residual2.dat' using (log10(abs($2))):(log10(abs($5))) ti 'R4' with points;

set output './pngFiles/residualMaxIteration.svg'
set xlabel "iteration number"
set ylabel "log10(R/Yc)"
set nokey
set xtics (1,2,3,4)
set xrange [0.5:4.5]
plot for[i=2:5] './datFiles/residual2.dat' using (i-1):(log10(abs(column(i)))) with points;

set xlabel "Time"
set ylabel "R0"
set terminal svg size 1200, 800

unset xtics
unset xrange
set xtics
set key
set output './pngFiles/residualSum.svg'
plot './datFiles/residual2.dat' using 1:3 ti '' with points;

set xlabel "log10(R1/Yc)"
set ylabel "log10(R2/Yc,R3/Yc,R4/Yc)"
set output './pngFiles/residualSumr1r2.svg'
plot './datFiles/residual2.dat' using (log10(abs($3))):(log10(abs($3))) ti 'R1' with points, \
     './datFiles/residual2.dat' using (log10(abs($3))):(log10(abs($4))) ti 'R2' with points, \
     './datFiles/residual2.dat' using (log10(abs($3))):(log10(abs($5))) ti 'R3' with points, \
     './datFiles/residual2.dat' using (log10(abs($3))):(log10(abs($6))) ti 'R4' with points;

set output './pngFiles/residualSumIteration.svg'
set xlabel "iteration number"
set ylabel "log10(R/Yc)"
set nokey
set xtics (1,2,3,4)
set xrange [0.5:4.5]
plot for[i=3:6] './datFiles/residual2.dat' using (i-1):(log10(abs(column(i)))) with points;

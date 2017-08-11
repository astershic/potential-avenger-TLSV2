#!/bin/bash
# shell script generated by <ring.h> -- MH [DCML] (2010)

gnuplot ./gnuplot/plotEnrg.plt
gnuplot ./gnuplot/plotFragInfo.plt
gnuplot ./gnuplot/plotHisto.plt
gnuplot ./gnuplot/plotSTheta.plt

for i in ./pngFiles/*.svg
do
echo $i
sleep 0.2
/usr/bin/open -a "/Applications/Google Chrome.app" $i 
#/usr/bin/open -a "/Applications/Google Chrome.app" ./pngFiles/*.svg 
done

reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../corerate.eps"

set key left
set xlabel 'NVIDIA GTX 280 Core Clock Rate (MHz)'
set ylabel 'Speedup'
set auto x
set yrange [0.0:6.0]
set boxwidth 0.9
#set bmargin 10 
plot 'core_raw' \
using ($2):xtic(1) ti 'SM' with linespoints lw 4 lc -1,\
'' u ($3) ti 'MM' with linespoints lw 4 lc -1, \
'' u ($4) ti 'BS' with linespoints lw 4 lc -1,\
'' u ($5) ti 'SS' with linespoints lw 4 lc -1, \
'' u ($6) ti 'PCA' with linespoints lw 4 lc -1, \
'' u ($7) ti 'MC' with linespoints lw 4 lc -1


#using ($2):xtic(1) smooth csplines ti '100' with lines
#, \
#'' u ($3) ti '150', \
#'' u ($4) ti '200'

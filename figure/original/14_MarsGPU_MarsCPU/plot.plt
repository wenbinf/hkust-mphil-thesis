reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsGPU_MarsCPU.eps"

set xlabel 'Applications'
set ylabel 'Speedup'

set auto x
set yrange [0:7.5]
set label '10.2' at 1.1, 7.8
set ytics (1, 2, 3, 4, 5, 6, 7)
set style data histogram
set style histogram cluster gap 1
set style line 2 lc  rgb "grey"
set style line 3 lc  rgb "black"
set style fill solid border -1
set line style 1 lt 2 lw 3 lc rgb 'black'
set boxwidth 0.9
#set bmargin 10 
f(x) = 1
plot 'raw' \
using ($8/$2):xtic(1) fs pattern 0 ti 'Small', \
'' u ($9/$3) ls 2 ti 'Medium', \
'' u ($10/$4) ls 3 ti 'Large', \
f(x) ls 1 ti ''

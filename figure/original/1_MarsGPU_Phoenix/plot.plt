reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsGPU_Phoenix.eps"

set xlabel 'Applications'
set ylabel 'Speedup'
set auto x
set yrange [0:25]
set ytics (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25)
set style data histogram
set style histogram cluster gap 1
set style line 2 lc  rgb "grey"
set style line 3 lc  rgb "black"
set line style 1 lt 2 lw 3 lc rgb 'black'
set style fill solid border -1
set boxwidth 0.9
#set bmargin 10 
f(x) = 4
plot 'raw' \
using ($11/$2):xtic(1) fs pattern 0 ti 'Small', \
'' u ($12/$3) ls 2 ti 'Medium', \
'' u ($13/$4) ls 3 ti 'Large', \
f(x) ls 1 ti ''

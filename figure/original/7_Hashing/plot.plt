reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../Hashing.eps"

set xlabel 'Applications'
set ylabel 'Speedup'
set auto x
set yrange [0:4.5]
set key left
set ytic (0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5)
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
#set bmargin 10 
plot 'raw' \
using 2:xtic(1) ti 'MarsCUDA', \
'' u 3 ti 'MarsCPU'

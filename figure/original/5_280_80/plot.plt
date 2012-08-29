reset

set terminal postscript portrait enhanced color
set size 2.0, 1.0
set output "280_80.eps"

set xlabel 'Applications'
set ylabel 'Speedup'
set auto x
set yrange [0:3.5]
set ytics (0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5)
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45
#set bmargin 10 
unset key
plot 'raw' \
using ($7/$4):xtic(1) ti 'Small'

reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../vector.eps"

set xlabel 'Applications'
set ylabel 'Speedup'
set auto x
set yrange [1.0:2.2]
set ytics (1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5)
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
unset key
set boxwidth 0.9
#set xtic rotate by -45
#set bmargin 10 
plot 'raw' \
using 2:xtic(1) ti 'Small'

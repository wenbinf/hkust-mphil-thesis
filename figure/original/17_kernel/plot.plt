reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../kernel.eps"

set xlabel 'Applications'
set ylabel 'Speedup'
set auto x
set yrange [1:45]
set style data histogram
set style histogram cluster gap 1
set style fill solid  border -1
set boxwidth 0.9
#set bmargin 10 
unset key
plot 'raw' \
using ($2):xtic(1) lc rgb "grey" ti 'Small'

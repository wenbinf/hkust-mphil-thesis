reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsCPU_pthread.eps"

set label '3.6' at 0.15, 1.145
set xlabel 'Applications'
set ylabel 'Slowdown'
set auto x
set yrange [1:1.14]
#set ytics (1.0, )
set style data histogram
set style histogram cluster gap 1
set style fill solid  border -1
set boxwidth 0.9
#set bmargin 10 
unset key
plot 'raw' \
using ($2/$3):xtic(1) lc rgb "grey" ti 'Small'

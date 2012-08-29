reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../speeduphadoopwc.eps"

set xlabel 'Workloads for Word Count'
set ylabel 'Speedup'
set auto x
set yrange [0.9:1.1]
set ytics (0.90, 0.95, 1.00, 1.05, 1.10)
set xtics rotate by -45
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set line style 1 lt 2 lw 3 lc rgb 'black'
f(x) = 1
unset key
set boxwidth 0.9
#set xtic rotate by -45
#set bmargin 10 
plot 'speedup_raw' \
using ($2/$3):xtic(1) lc rgb "grey" ti '', \
f(x) ls 1 ti ''

reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsGPU_CUDA.eps"

set label '4.3' at 0.8, 1.42
set label '6.4' at 4.8, 1.42
set xlabel 'Applications'
set ylabel 'Slowdown'
set auto x
set yrange [1:1.4]
#set ytics (1.0, )
set style data histogram
set style histogram cluster gap 1
set style fill solid  border -1
set boxwidth 0.9
#set bmargin 10 
unset key
plot 'raw' \
using ($2/$3):xtic(1) lc rgb "grey" ti 'Small'

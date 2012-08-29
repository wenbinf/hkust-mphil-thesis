reset

set terminal postscript portrait enhanced color
set size 1.0, 0.4
set output "../../balanced.eps

set xlabel 'The degree of skew.'
set ylabel 'Speedup'
set auto x
set yrange [0:3]
set key left
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
#set bmargin 10 
plot 'raw' \
using ($3/$4):xtic(1) lc rgb 'grey' ti ''

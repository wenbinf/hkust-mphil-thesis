reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsBrook_brook.eps"

set key left
set xlabel 'Applications'
set ylabel 'Slowdown'
set auto x
set yrange [1.0:2.5]
set ytics (1.0, 1.5, 2.0, 2.5)
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
#set bmargin 10 
plot 'raw' \
using ($2/$5):xtic(1) fs pattern 0 lt -1 ti 'Small', \
'' u ($3/$6) lc rgb "grey" ti 'Medium', \
'' u ($4/$7) lc rgb "black" ti 'Large'

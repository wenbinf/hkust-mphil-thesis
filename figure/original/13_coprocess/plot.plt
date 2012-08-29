reset

set terminal postscript portrait enhanced color
set size 1.0, 0.4
set output "../../coprocess.eps"

set key reverse left top
set xlabel 'Applications'
set ylabel 'Speedup'
set auto x
set yrange [0:20]
set ytics (1 ,5, 10,15, 20)
set xtics rotate by -45
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
#unset key
set boxwidth 0.9
set label  "27.17" at 4.1, 21.0
set label  "72.91" at 3.1, 21.0
#set xtic rotate by -45
#set bmargin 10 
set line style 1 lt 2 lw 3 lc rgb 'black'
f(x) = 1
plot 'raw' \
using ($2/$5):xtic(1) lc rgb "white" ti 'vs MarsCUDA', \
'' u ($3/$5) lc rgb 'grey' ti 'vs MarsCPU', \
'' u ($4/$5) lc rgb 'black' ti 'vs Phoenix', \
f(x) ls 1 ti ''

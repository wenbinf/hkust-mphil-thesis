reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsCPU_Timebreakdown.eps"

set key invert reverse Left outside
set yrange [0:100]
set ylabel "% of total"
set xlabel "Applications"
set grid y
set border 3
set style data histograms
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
#
plot 'raw' using (100.*($9+$14+$10)/$15):xtic(1) lc rgb "black" t 'Preprocess', \
'' u (100.*$11/$15) fs pattern 7 lt -1 t 'Map', \
'' u (100.*$12/$15) fs pattern 8 lt -1 t 'Group', \
'' u (100.*$13/$15) fs pattern 4 lt -1 t 'Reduce'

reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../MarsGPU_Timebreakdown.eps"

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
#set style line 2 lc  rgb "grey"
#set style line 3 lc  rgb "black"

#
plot 'raw' using (100.*($2+$7+$3)/$8):xtic(1)  lc rgb "black" t 'Preprocess', \
'' u (100.*$4/$8) fs pattern 7 lt -1 t 'Map', \
'' u (100.*$5/$8) fs pattern 8 lt -1 t 'Group', \
'' u (100.*$6/$8) fs pattern 4 lt -1 t 'Reduce'

reset

set terminal postscript portrait enhanced color
set size 1.0, 0.5
set output "../../breakdownhadoopwc.eps"

set key invert reverse Left outside
set yrange [0:100]
set ylabel "% of total"
set xlabel "Workloads for Word Count"
set xtics rotate by -45
set grid y
set border 3
set style data histograms
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
#
plot 'breakdown_raw' using (100.*$2/$5):xtic(1) fs pattern 1 lt -1 t 'Disk I/O', \
'' u (100.*$3/$5) fs pattern 4 lt -1 t 'PCI-E I/O', \
'' u (100.*$4/$5) fs pattern 2 lt -1 t 'GPU Computation'
#'' u (100.*($5-$2-$3-$4)) fs pattern 5 lt -1 t 'Other'

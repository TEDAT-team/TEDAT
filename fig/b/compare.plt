set terminal pdfcairo font "Gill-Sans,12" linewidth 2 rounded fontscale 1.0


# Line style for axes
set style line 80 lt rgb "#808080"


set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey
set style line 82 lt rgb "black"  # grey





set xtics nomirror
set ytics nomirror

set dashtype 1 (5,8)



set style line 1 lt rgb "#A00000" lw 1 pt 1
set style line 2 lt rgb "#00A000" lw 1 pt 6
set style line 3 lt rgb "#5060D0" lw 1 pt 2
set style line 4 lt rgb "#F25900" lw 1 pt 9
set style line 5 lt rgb "#000000" lw 1 dt 1


set xlabel "Data center location" offset 0,0.9
set ylabel "Bandwidth ratio" offset 1.8,0



set style data histogram
set style histogram errorbars gap 1 lw 1
set boxwidth 0.8
set bars 0.5
set xrange [-0.6:4.6]
set yrange [0:8]


set xtics offset 0,0.4
set ytics offset 0.5,0


iname5 = "dctcp-secn-off-ecn-on"
iname7 = "dctcp-secn-on-ecn-on"



set grid back linestyle 81
set border 3 back linestyle 82

set style fill transparent pattern 0 border


unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset key


set key at -0.5,250 left center font ",9"

set output "compare-selected.pdf"



plot \
	iname5 u 4:5:xtic(1) ls 2  notitle
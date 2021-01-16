# vim: set filetype=gnuplot :
set terminal pdfcairo font "Gill-Sans,12" linewidth 4 rounded fontscale 1.0

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey





set xtics nomirror
set ytics nomirror

#set log x
#set mxtics 10    # Makes logscale look good.

# Line styles: try to pick pleasing colors, rather
# than strictly primary colors or hard-to-see colors
# like gnuplot's default yellow.  Make the lines thick
# so they're easy to see in small plots in papers.

set style line 1 lt rgb "red" lw 0.6 pt 1
set style line 2 lt rgb "#00A000" lw 0.6 pt 6
set style line 3 lt rgb "blue" lw 0.6 pt 2
set style line 4 lt rgb "#F25900" lw 0.6 pt 9
set style line 5 lt rgb "dark-grey" lw 0.6 pt 9
set style line 6 lt rgb "#000000" lw 0.6 pt 1

set style arrow 1 head filled size screen 0.025,30,45
set style arrow 2 head nofilled size screen 0.03,15
set style arrow 3 head filled size screen 0.03,15,45
set style arrow 4 head filled size screen 0.03,15
set style arrow 5 heads filled size screen 0.03,15,135
set style arrow 6 head empty size screen 0.03,15,135
set style arrow 7 nohead
set style arrow 8 heads size screen 0.008,90

set dashtype 2 (6,5)
set dashtype 3 (6,5,1,5)



set style data histogram
set style fill solid 1 border lt -1
set style histogram errorbars gap 1.2 lw 1 
set bars 0.5


#set format x '%2.1t*10^{%L}'




set output "Cernet.pdf"


set xlabel "Bandwidth"
set ylabel "Satisfaction fraction(%)"



set size ratio 0.5

set grid back linestyle 81
set border 15 back linestyle 80



set xrange [-0.5:2.5]
set yrange [65:100]


plot \
	'cernet.txt' u 2:3:xtic(1) t "TEDAT" ls 1, '' u 4:5:xtic(1) t "TEAVAR" ls 2,'' u 6:7:xtic(1) t "SWAN" ls 3
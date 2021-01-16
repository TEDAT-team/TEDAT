# v# vim: set filetype=gnuplot :
set terminal pdfcairo font "Gill-Sans,12" linewidth 2 rounded fontscale 1.0

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey
set style line 82 lt rgb "black"  # grey

set grid back linestyle 81
set border 3 back linestyle 80 # Remove border on top and right.  These
             # borders are useless and make it harder
             # to see plotted lines near the border.
    # Also, put it in grey; no need for so much emphasis on a border.



set xtics nomirror
set ytics nomirror

#set log x
#set mxtics 10    # Makes logscale look good.

# Line styles: try to pick pleasing colors, rather
# than strictly primary colors or hard-to-see colors
# like gnuplot's default yellow.  Make the lines thick
# so they're easy to see in small plots in papers.


set style line 1 lt rgb "red" lw 2 pt 1 ps 1.5
set style line 2 lt rgb "#00A000" lw 2 pt 6 ps 1.5
set style line 3 lt rgb "blue" lw 2 pt 2 ps 1.5
set style line 4 lt rgb "#F25900" lw 2 pt 9 ps 1.5
set style line 5 lt rgb "#500050" lw 2 pt 12 ps 1.5
set style line 6 lt rgb "#000000" lw 2 pt 13 ps 1.5

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





#set format x '%2.1t*10^{%L}'

set grid back linestyle 81
set border 3 back linestyle 82




set output "bandwidthcdf.pdf"


set xlabel "Measured/Scheduled bandwidth"
set ylabel "CDF"




set key right bottom
set size ratio 0.5



set xrange [0.9:1.1]
set yrange [0:1]


plot "cdf.txt" u 2:1 title "TEDAT" w l ls 1  smooth bezier, '' u 4:1 title "TEAVAR" w l ls 2 dashtype '-' smooth bezier ,'' u 3:1 title "FFC" w l ls 3 dashtype '.' smooth bezier 

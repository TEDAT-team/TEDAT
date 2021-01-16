# vim: set filetype=gnuplot :
set terminal pdfcairo font "Gill-Sans,12" linewidth 1 rounded fontscale 1.0


# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lw 0.6 lt rgb "#808080"  # grey
set style line 82 lt rgb "black"  # grey





set xtics nomirror
set ytics nomirror

#set log x
#set mxtics 10    # Makes logscale look good.

# Line styles: try to pick pleasing colors, rather
# than strictly primary colors or hard-to-see colors
# like gnuplot's default yellow.  Make the lines thick
# so they're easy to see in small plots in papers.

set style line 1 lt rgb "red" lw 0.1 pt 1
set style line 2 lt rgb "#00A000" lw 0.1 pt 6
set style line 3 lt rgb "blue" lw 0.1 pt 2
set style line 4 lt rgb "#F25900" lw 0.6 pt 9
set style line 5 lt rgb "dark-grey" lw 0.6 pt 9

set style line 6 lt rgb "#000000" lw 2 pt 2

set style line 7 lt rgb "black" lw 0.6

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



set xlabel "Links" offset 0,0.9
set ylabel "Failure number" offset 1.8,0


set style fill solid 1
#set style data histogram
set boxwidth 1.3
set bars 0.8
set xrange [0:8]
set yrange [0:5]

set grid back linestyle 81
set border 3 back linestyle 82

set size ratio 0.5
#set xtics offset 0,0.4
#set ytics offset 0.5,0 

unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset key

set xtics offset 0,0.4
set ytics offset 0.5,0


set label 1 "89"
set label 1 at graph 0.37, 1.07 tc rgb "#000000"

set xtics ("L1" 0.2, "L2" 1.2, "L3" 2.2,"L4" 3.2,"L5" 4.2,"L6" 5.2,"L7" 6.2,"L8" 7.2)




set output "links.pdf"
plot \
	'links.txt' u 2 w histogram ls 1 notitle,1000 w l ls 7  notitle 
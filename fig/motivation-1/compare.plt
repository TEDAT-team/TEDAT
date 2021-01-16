# vim: set filetype=gnuplot :
set terminal pdfcairo font "Lato-Bold,12" linewidth 4 rounded fontscale 1.0

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

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
set dashtype 1 (5,8)
set style line 1 lt rgb "#A00000" lw 1 pt 1
set style line 2 lt rgb "#00A000" lw 1 pt 6
set style line 3 lt rgb "#5060D0" lw 1 pt 2
set style line 4 lt rgb "#F25900" lw 1 pt 9
set style line 5 lt rgb "#000000" lw 1 dt 1

set output "compare-temp.pdf"
set xlabel "Number of Senders" offset 0,0.9
set ylabel "Height (KB)" offset 1.8,0

set size ratio 0.25

set style data histogram
set style histogram errorbars gap 1 lw 1
set boxwidth 0.8
set bars 0.5
set xrange [-0.6:4.6]
set yrange [16:300]
set xtics offset 0,0.4
set ytics offset 0.5,0
#set logscale y 2

iname1 = "tcp-secn-off-ecn-off"
iname2 = "tcp-secn-off-ecn-on"
iname3 = "tcp-secn-on-ecn-off"
iname4 = "tcp-secn-on-ecn-on"
iname5 = "dctcp-secn-off-ecn-on"
iname6 = "dctcp-secn-on-ecn-off"
iname7 = "dctcp-secn-on-ecn-on"
iname8 = "slope-secn-on-ecn-off"

#set key left tmargin width 1 vertical maxrows 1 font ",7"
set label 1 "512KB" at -0.38,320 center front font ",7"
set label 2 "512KB" at 0.62,320 center front font ",7"
set label 3 "512KB" at 1.62,320 center front font ",7"
set label 4 "512KB" at 2.62,320 center front font ",7"
set label 5 "512KB" at 3.62,320 center front font ",7"
set dashtype 1 (10,6)
plot \
	iname1 u 4:5:xtic(1) ls 1 dt 1 t "TCP",\
	iname2 u 4:5:xtic(1) ls 2  t "ECN*",\
	iname3 u 4:5:xtic(1) ls 3 fs pattern 1 t "S-ECN",\
	iname4 u 4:5:xtic(1) ls 4 fs pattern 2 t "SL-ECN",\
	iname5 u 4:5:xtic(1) lt 1 fs pattern 4 t "DCTCP",\
	iname7 u 4:5:xtic(1) lt 3 fill solid t "DCTCP+SL-ECN",\
	32 w l ls 5 t "ECN threshold"
	#iname8 u 4:5:xtic(1) lt 4 dt 1 t "Slope"

set size ratio 0.4
unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset key
set key at -0.5,250 left center font ",9"
set output "compare-selected.pdf"
plot \
	iname5 u 4:5:xtic(1) ls 1 t "DCTCP",\
	iname7 u 4:5:xtic(1) ls 3 fill solid t "DCTCP+S-ECN",\
	32 w l ls 5 t "ECN threshold"

set terminal pdfcairo font "Lato-Bold,23"

# Line style for axes
set style line 80 lt rgb "#808080"

set xtics nomirror
set ytics nomirror

set style line 1 lt rgb "red" lw 1 pt 1
set style line 2 lt rgb "#00A000" lw 4 pt 6
set style line 3 lt rgb "blue" lw 1 pt 2
set style line 4 lt rgb "#FFA060" lw 1 pt 9
set style line 5 lt rgb "dark-grey" lw 1 pt 9
set style line 6 lt rgb "#000000" lw 1 pt 1

set xlabel "Deadline(%)"
set ylabel "Deadline missing(%)"

set y2label "Average FCT (ms)"

set style fill solid 1 border lt -1
#set style data histogram
set style fill solid 1 border lt -1
set style histogram errorbars gap 1.2 lw 2 
set boxwidth 1
set bars 0.5
set xrange [-0.5:3.5]
set yrange [0:40]

set y2tics
set y2range [0:200]


set xtics ("10" 0, "30" 1, "50" 2,"70" 3,"90" 4)

set key left bottom box 
set key box width 1
set key box height 0.2
set key left top 
set key reverse
set key Left
set key samplen 0.3



set output "deadlinevar.pdf"
plot \
	'deadline.txt' u 2:3:xtic(1) w histogram ls 1 t "Deadline missing" axis x1y1,\
	'' u 4 w line smooth csplines lt rgb "#00A000"  lw 4 notitle axis x1y2,\
	'' u 4:5:xtic(1) w errorbar  ls 2 t "Average FCT" axis x1y2
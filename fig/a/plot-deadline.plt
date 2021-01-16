set terminal pdfcairo font "Lato-Bold,12" linewidth 4 rounded fontscale 1.0


# Line style for axes
set style line 80 lt rgb "#808080"


set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

set grid back linestyle 81
set border 3 back linestyle 80 



set xtics nomirror
set ytics nomirror

set dashtype 1 (5,8)


set style line 1 lt rgb "red" lw 1 pt 1
set style line 2 lt rgb "#00A000" lw 4 pt 6
set style line 3 lt rgb "blue" lw 1 pt 2
set style line 4 lt rgb "#FFA060" lw 1 pt 9
set style line 5 lt rgb "dark-grey" lw 1 pt 9
set style line 6 lt rgb "#000000" lw 1 pt 1
set style line 7 lt rgb "#000000" lw 1 dt 1

set xlabel "Number of flows" offset 0,0.9
set ylabel "Bandwidth (Mbps)" offset 1.8,0


set style fill solid 1
#set style data histogram
set boxwidth 1.3
set bars 0.8
set xrange [-0.5:9.9]
set yrange [0:1100]

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


set xtics ("1" 0.2, "2" 1.2, "3" 2.2,"4" 3.2,"5" 4.2,"6" 5.2,"7" 6.2,"8" 7.2,"9" 8.2,"10" 9.2,"11" 10.2,"12" 11.2,"13" 12.2,"14" 13.2,"15" 14.2)




set output "aggregate.pdf"
plot \
	'deadline.txt' u 2 w histogram ls 1 notitle,1000 w l ls 7 notitle
#the 4 lines in y_vals are the four algorihtmn (Tevar with weibull, tevar, smore, ffc)

set terminal pdf font ',20' 
       set grid
       set size 1,1
       set title ''
       set xtics font 'Gill-Sans, 21'
       set ytics font 'Gill-Sans, 21'
       show grid
       set key font 'Gill-Sans, 23' spacing 1 top left
       set yrange[0:360]
       set xrange[20:112]
       set xtics rotate
       set ytics 0, 40, 360
       set xtics nomirror
       set xtics ("Cernet" 32, "B4" 38, "IBM" 48, "ATT" 112)
       set x2tics (32, 38, "48" 48, 112)



set output 'optimizer_times.pdf'
set lmargin 9
set bmargin 3.8
set ylabel 'Time (s)' font 'Gill-Sans, 26' offset -0.8,0
set x2label 'Number of Edges' font 'Verdana, 22' offset -1,0
set key

set xtics nomirror
set ytics nomirror
set style arrow 1 head filled size screen 0.025,30,45
set style arrow 2 head nofilled size screen 0.03,15
set style arrow 3 head filled size screen 0.03,15,45
set style arrow 4 head filled size screen 0.03,15
set style arrow 5 heads filled size screen 0.03,15,135
set style arrow 6 head empty size screen 0.03,15,135
set style arrow 7 nohead
set style arrow 8 heads size screen 0.008,90

set style line 81 lt 0  # dashed
set style line 81 lw 0.6 lt rgb "#808080"  # grey
set style line 82 lt rgb "black"  # grey

set grid back linestyle 81
set border 3 back linestyle 82



set style line 81 lt 0  # dashed
set style line 81 lw 0.6 lt rgb "#808080"  # grey
set style line 82 lt rgb "black"  # grey

set grid back linestyle 81
set border 15 back linestyle 82



set style line 1 lt rgb "red" lw 4 pt 1
set style line 2 lt rgb "#00A000" lw 4 pt 6
set style line 3 lt rgb "blue" lw 4 pt 2
set style line 4 lt rgb "#F25900" lw 4 pt 9
set style line 5 lt rgb "dark-grey" lw 4 pt 9
set style line 6 lt rgb "#000000" lw 4 pt 1



plot \
"optimizer_times.txt" using 1:2 t 'Cutoff 10^{-3}'  w lines ls 1,\
"optimizer_times.txt" using 1:3 t 'Cutoff 10^{-4}'  w lines ls 2,\
"optimizer_times.txt" using 1:4 t 'Cutoff 10^{-5}'  w lines ls 3,\
"optimizer_times.txt" using 1:5  t 'Cutoff 10^{-6}'  w lines ls 4,\

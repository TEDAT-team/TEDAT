set terminal pdf font ',20'

 
       set size 1,1
       set xlabel 'Topology'
       set xtics font 'Gill-Sans, 21'
       set ytics font 'Gill-Sans, 21'

       set key font 'Gill-Sans, 21' spacing 1 top horizontal outside center 
       set boxwidth 0.75
       set style fill solid


      set yrange [98:100]
#     set ytics 0, 0.2, 1
#     set xtics (0.9, 0.99, 0.999, 0.999, 0.9999)
      set style data histogram
      set style histogram cluster gap 1
      set bmargin 4
      set lmargin 11
      set tmargin 3
      set key
# Line style for axes




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


set style line 1 lt rgb "red" lw 0.6 pt 1
set style line 2 lt rgb "#00A000" lw 0.6 pt 6
set style line 3 lt rgb "blue" lw 0.6 pt 2
set style line 4 lt rgb "#F25900" lw 0.6 pt 9
set style line 5 lt rgb "dark-grey" lw 0.6 pt 9
set style line 6 lt rgb "#000000" lw 0.6 pt 1


set output 'coverage.pdf'
set ylabel 'State Coverage (%)' font 'Gill-Sans, 26' offset -.6,-.4

plot 'coverage.txt'  using (100*$2):xtic(1) title col ls 1, \
                              '' using (100*$3):xtic(1) title col ls 2, \
                              '' using (100*$4):xtic(1) title col ls 3, \
                              '' using (100*$5):xtic(1) title col ls 4, \

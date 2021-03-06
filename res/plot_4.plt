unset grid
set terminal pdf
set output 'wykres[4].pdf'
set key box top left
set multi
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 14”
set style data lines
set termopt enhanced
set xlabel "N" font "Arial, 14”
set ylabel "Multiplication time" font "Arial, 14”
set xtics font "Arial, 14”
set ytics font "Arial, 14”
set termoption dashed

plot [10:1280][1E-5:1E+2] "naiv_4.txt"
replot "bett_4.txt"
replot "dot_4.txt"
replot "matmul_4.txt"
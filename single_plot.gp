#!/usr/bin/gnuplot

# Set terminal and output
set terminal pngcairo enhanced font "Arial,12" size 800,600
set output "graphics/fusion_algorithms_comparison.png"

# Set title and labels
set title "Vergleich verschiedener Fusionsalgorithmen" font "Arial,14"
set ylabel "Korrekte Erkennungsrate (%)" font "Arial,12"
set xlabel "" font "Arial,12"

# Set y-axis range to focus on the differences
set yrange [99:100.2]

# Set grid
set grid y

# Set bar chart style
set style fill solid 0.7 border -1
set boxwidth 0.6

# Set x-axis labels
set xtics rotate by -45 font "Arial,11"

# Set colors for different performance levels
set style data histograms
set style histogram cluster gap 1

# Define color palette: purple for 100%, blue for high performance, teal for good, orange for lower
plot 'fusion_data.dat' using 2:xtic(1) with boxes \
     lc rgb "#9966CC" title "Erkennungsgenauigkeit"

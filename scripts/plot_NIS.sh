grep radar NIS_data.txt | cut -d ':' -f2 > NIS_radar.raw
grep lidar NIS_data.txt | cut -d ':' -f2 > NIS_lidar.raw

cat  NIS_radar.raw |  tail -n +2 | head -n -1 > NIS_radar.txt
cat  NIS_lidar.raw |  tail -n +2 | head -n -1 > NIS_lidar.txt

octave plot_NIS.m NIS_radar.txt 7.8
octave plot_NIS.m NIS_lidar.txt 5.9

rm *.raw
rm NIS_lidar.txt
rm NIS_radar.txt

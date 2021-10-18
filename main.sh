size=$(du -s /home/$USER/Work/nlk/dist | awk '{print$1}')
size=$((size/1024))
echo "Initialize size dist check at: $(date)" >> /home/$USER/distSizeChecker.log
echo "Dist size is: ${size} MB" >> /home/$USER/distSizeChecker.log
if (( $size > $1 )); then
  echo "Delete dist folder" >> /home/$USER/distSizeChecker.log
  rm -rf /home/$USER/Work/nlk/dist
fi

echo -e "\n\n" >> /home/$USER/distSizeChecker.log

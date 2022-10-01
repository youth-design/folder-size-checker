size=$(du -s $1 | awk '{print$1}')
size=$((size/1024))
echo "Initialize size dist check at: $(date)" >> /home/$USER/distSizeChecker.log
echo "Dist ($1) size is: ${size} MB" >> /home/$USER/distSizeChecker.log
if (( $size > $2 )); then
  echo "Delete dist folder" >> /home/$USER/distSizeChecker.log
  rm -rf $1
fi

echo -e "\n\n" >> /home/$USER/distSizeChecker.log

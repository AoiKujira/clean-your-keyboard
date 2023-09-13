seconds=$1
# start timer
while [ $seconds -gt 0 ]; do
    echo "Remaining time: $seconds seconds"
    sleep 1
    (( seconds-- ))
done

echo "Time's up!"
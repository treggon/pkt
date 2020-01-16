SLEEP_IN_SECS=47
while (( 1 ))
do
        echo " About to nuke node"
        ps -aef | grep node | awk '{print $2}' | while read a
        do
        kill ${a}
        done
        sleep 5
        nice -n 15 node ./blkmine.js --maxKbps 10000000 --threads 2 --maxAnns 4000000 --paymentAddr=pRoX4rXvd9JKL8ic4P1X3eDXZkFNk9ai6G http://pool.gridfinity.com/master &
        sleep 5
        nice -n 5 node ./annmine.js  --maxKbps 10000000 --threads 4 --paymentAddr=pRoX4rXvd9JKL8ic4P1X3eDXZkFNk9ai6G http://pool.gridfinity.com/master &
sleep ${SLEEP_IN_SECS}
done

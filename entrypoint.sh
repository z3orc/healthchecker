while :
do
    now=$(date +'%Y-%m-%dT%H:%M:%S%z')
    curl -s -X POST ${HEALTHCHECK_URL} > /dev/null

    if [ $? != 0 ] 
    then
        echo "${now} Error while sending request"
        exit 1
    fi
    echo "${now} Sending all-good signal to Healthcheck"

    sleep ${DELAY}
done
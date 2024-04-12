while :
do
    now=$(date +'%Y-%m-%dT%H:%M:%S%z')
    curl -s -X POST ${HEALTHCHECK_URL}

    if [ $? != 0 ] 
    then
        echo "${date} Error while sending request"
        exit 1
    fi
    echo "${date} Sending all-good signal to Healthcheck

    sleep ${DELAY}
done
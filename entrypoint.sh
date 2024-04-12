while :
do
    echo "curl -X POST ${HEALTHCHECK_URL}"

    if [ $? != 0 ] 
    then
        exit 1
    fi

    sleep "${DELAY}"
done
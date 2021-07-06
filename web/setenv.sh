if [[ -n $TRINSIC_TEST_URL ]]; then
    echo "env = { ENDPOINT: 'http://$TRINSIC_TEST_URL' }" > ./test/env.js
else
    echo "env = { ENPOINT: 'http://localhost:5000' }" > ./test/env.js
fi
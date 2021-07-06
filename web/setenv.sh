if [[ -n $TRINSIC_TEST_URL ]]; then
    echo "exports.env = { ENDPOINT: 'http://$TRINSIC_TEST_URL' }" > ./test/env.js
else
    echo "exports.env = { ENPOINT: 'http://localhost:5000' }" > ./test/env.js
fi
if (-not (Test-Path env:TRINSIC_TEST_URL)) { $env:TRINSIC_TEST_URL = "localhost:5000" }

Write-Output "exports.env = { ENDPOINT: 'http://${Env:TRINSIC_TEST_URL}' }" > ./test/env.js

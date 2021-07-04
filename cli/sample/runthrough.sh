
# Provider
trinsic wallet create --description "Clinic's Wallet" --name clinic && \
trinsic wallet create --description "Airline's wallet" --name airline;

# Allison
trinsic wallet create --name allison --security-code <code>

# Issuer
trinsic --profile clinic issuer issue --document ../vaccination-certificate-unsigned.jsonld --out ./vaccination-certificate-signed.jsonld

more ./vaccination-certificate-signed.jsonld

mv ./vaccination-certificate-signed.jsonld allison

# Allison
trinsic --profile allison wallet insert-item --item ./vaccination-certificate-signed.jsonld

trinsic --profile allison issuer create-proof --document-id "" --out ./vaccination-certificate-partial-proof.jsonld --reveal-document ../vaccination-certificate-frame.jsonld

more vaccination-certificate-partial-proof.jsonld

mv vaccination-certificate-partial-proof.json ../airline

# Airline
trinsic --profile airline issuer verify-proof --proof-document ./vaccination-certificate-partial-proof.jsonld

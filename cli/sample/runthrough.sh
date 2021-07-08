#!/usr/bin/env bash

# Provider creates wallets for clinic and airline
trinsic wallet create --description "Clinic's Wallet" --name clinic && \
trinsic wallet create --description "Airline's wallet" --name airline;

# Allison creates a wallet
trinsic wallet create --name allison --security-code <code>

# Issuer
trinsic --profile clinic issuer issue --document vaccination-certificate-unsigned.jsonld --out ./clinic/vaccination-certificate-signed.jsonld

more ./clinic/vaccination-certificate-signed.jsonld

# Send to holder. Can be done many ways
mv ./clinic/vaccination-certificate-signed.jsonld allison

# Allison inserts credential into cloud wallet 
trinsic --profile allison wallet insert-item --item ./allison/vaccination-certificate-signed.jsonld

# Allison creates a proof of her credential
trinsic --profile allison issuer create-proof --document-id "" --out ./allison/vaccination-certificate-partial-proof.jsonld --reveal-document ./vaccination-certificate-frame.jsonld

more ./allison/vaccination-certificate-partial-proof.jsonld

# Allison sends proof of vaccination to an airline
mv ./allison/vaccination-certificate-partial-proof.json ./airline

# Airline verifies proof
trinsic --profile airline issuer verify-proof --proof-document ./airline/vaccination-certificate-partial-proof.jsonld

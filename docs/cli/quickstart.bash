    #! /bin/bash
    
    # Define your credential templates of the data that you'll be exchanging
    # trinsic -p provider list_credential_templates

    # trinsic -p provider create_credential_template --schema ./schema.json

    # trinsic -p provider get_credential_template --id schema123

    # Great! You'll use this credential template once you've created an issuer. 
    trinsic -p provider provider invite --organization --method-email issuer@example.com
    trinsic -p provider  provider invite --organization --method-email verifier@example.com
    trinsic -p provider provider invite --individual --method-email holder@example.com

    # In this case, you'll be the issuer, holder, and verifier. However, you can invite anyone else to these wallets as well. 
    trinsic wallet create --name issuer --security-code <code>
    trinsic create wallet --name issuer --security-code <code>


    # **** Create your ecosystem config ****
    trinsic --profile provider trust-registry register-egf // TODO
    trinsic --profile provider register-issuer --credential-type https://schema.trinsic.id/schema123 --did did:key:1234556

    # **** Issue a credential ****
    # Now that you've gotten your ecosystem set up and invited your participants, you can now exchange credentials! 

    trinsic --profile issuer 

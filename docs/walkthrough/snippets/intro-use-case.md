## Use case overview

In this walkthrough we'll explore a scenario where Allison gets her vaccination certificate. She then uses this certificate to board an airline that requires proof of vaccination. Each participant in this scenario is part of the same ecosystem, though this is not a functional requirement.


```mermaid
journey
    title Obtaining and verifying vaccination certificate
    section Issuance
      Obtain cert.: 3: Alice, Clinic
      Store in wallet: 3: Alice
    section Verification
      Request cert.: 3: Alice, Airline
      Share: 3: Alice
      Verify: 5: Airline
```

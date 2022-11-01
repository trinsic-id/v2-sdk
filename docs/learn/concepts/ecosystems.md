# Ecosystems
Successful IDtech products can be broken down into two parts:

- An identity wallet: a representation of the user’s identity
- An ecosystem: the set of entities that can interact with the user’s identity

We’ve made it simple to create both wallets and ecosystems. In this section, we’ll break down the concept of an ecosystem and how Trinsic can help your ecosystem thrive. 

### Example ecosystems from the real world

Trust ecosystems exist all around us, but most are analog and disaggregated and therefore filled with inefficiencies and fraud. 

**Example 1: Payments**

The first trust ecosystems to go digital were payments networks. Visa, MasterCard, etc. introduced a standard mechanism to allow consumers to make purchases with any merchant using credit from any bank. Visa created an enduring business while simultaneously unlocking value for all participants involved.

- Wallet: users carry credit cards in their physical, leather wallets and in digital wallets held on their smart devices
- Ecosystem: the banks issuing cards and the merchants accepting cards comprise this ecosystem

**Example 2: Health pass**

As Covid-19 swept over the world, jurisdictions of various kinds sought to curb the spread of the virus by instituting restrictions on travel. Health passes of various kinds were instituted across the world, enabling people who could prove recent test results or vaccine status to travel again.

- Wallet: users obtained paper vaccine cards or digital health passes on their smart devices
- Ecosystem: the airlines, community centers, venues, cruise lines, customs departments, and other places where health passes were accepted comprise this ecosystem

### Anatomy of a trust ecosystem

As you dive deeper into how ecosystems work, it’s helpful to understand wallets, credentials, templates, and governance. We recommend referring back and forth between these pages to get a full picture. 

**Provider**

At the helm of a trust ecosystem sits a *provider*. Providers develop IDtech products that solve problems for the other participants of an ecosystem. They develop the software, adoption tools (such as templates), business models & incentives, and the governance that enables an ecosystem to be successful. 

> Before Stripe, every growing internet platform had a payments team. Today, every growing internet platform has an Identity team. Identity verification is a core piece of economic infrastructure for online businesses.
- *Stripe*
> 

Trinsic’s product is built from the ground-up for providers. Successful providers usually target a niche or industry with the aim of creating a sustainable, growing business.

**Issuer**

Issuers are the source of data in an ecosystem. They transform their raw data into verifiable credentials that are usable more broadly via the user’s wallet. Common examples of issuers include universities issuing diplomas, insurance companies issuing insurance cards, and libraries issuing library cards—but with digitally-native identity, so many more possibilities open up. 

> Every company in the world already has valuable data and functionality housed within its systems. Capitalizing on this value, however, means liberating it from silos and making it interoperable and reusable in different contexts
- *Google’s “State of API Economy 2021” report*
> 

The value for issuers often stems from extending their existing business into a new, digital format, which can either reduce costs or increase revenue. 

Proxy issuers can help bootstrap an ecosystem—this is when a provider uses 3rd-party APIs to verify user attributes to seed their wallet (e.g. using Twilio to verify a phone number vs getting a verifiable credential issued by AT&T).

**Holder or Subject**

Holder is the umbrella term for the person or organization who controls the identity in question. Whenever possible, you should build your product to put the holder in control of their own identity. The holder should always be able to give consent before their data is shared. 

Usually, the “subject” of the identity and the holder are the same. When Alice controls an identity wallet filled with Alice’s credentials, the holder and subject are the same. However, if Alice is a 2-year-old child, it’s likely that Alice’s father, Bob, will control her wallet. In that case, Bob is the holder and Alice is the subject. The holder and subject can also differ for business wallets, refugee/homeless/incarcerated person wallets, or for inanimate objects. 

**Verifier** 

Verifiers are the big winners of the move toward digital identity. They’re able to verify people with less friction and more trust, all with less expense than current systems.

Providers serve two important roles relative to verifiers. First, providers can aggregate the trusted issuers inside & outside the ecosystem to enable verifiers to trust a credential without maintaining their own infrastructure or registry. Second, providers can impose rules on verifiers to make sure they’re following data minimization and data protection best practices and regulations.
var TrinsicWalletService = require("../dist/WalletService.js").TrinsicWalletService;

let walletService = new TrinsicWalletService("localhost:5000");

walletService.registerOrConnect("michaelblack117@gmail.com")
  .then(response => {
    console.log(response);
  })
  .catch(error => {
    console.error(error);
  });

// walletService.getProviderConfiguration()
//   .then(response => {
//     console.log(response);
//   })
//   .catch(error => {
//     console.error(error);
//   });

walletService.createWallet()
  .then(response => {
    console.log(response);
  })
  .catch(error => {
    console.error(error);
  });

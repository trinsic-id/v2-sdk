var test = require("ava");
var TrinsicWalletService = require("../dist/WalletService.js").TrinsicWalletService;

test("get provider configuration", async t => {
    var service = new TrinsicWalletService();
    var configuration = await service.getProviderConfiguration();

    t.pass();
});

test("debug", t => t.pass());
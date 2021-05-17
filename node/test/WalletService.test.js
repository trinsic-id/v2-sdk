var test = require("ava");
var TrinsicWalletService = require("../dist/WalletService.js").TrinsicWalletService;

test("create", async t => {
    var service = new TrinsicWalletService();
    var configuration = await service.getProviderConfiguration();

    t.pass();
});
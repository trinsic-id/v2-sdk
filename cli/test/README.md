# CLI Integration Tests

The test can be run against different environments and CLI installations

To run the demo against production using default installation of Trinsic CLI
```
./test/Run-Demo.ps1
```

To pass custom CLI path or environment
```
./test/Run-Demo.ps1 -Environment Development -CommandPath ./target/debug/trinsic
```
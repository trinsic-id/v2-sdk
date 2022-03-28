const {
    resolve
} = require('path');

module.exports = {
    preset: "ts-jest",
    testEnvironment: "node",
    verbose: true,
    moduleDirectories: ["node_modules", "src"],
    moduleNameMapper: {
        // see: https://github.com/kulshekhar/ts-jest/issues/414#issuecomment-517944368
        "@trinsic/trinsic": resolve(__dirname, 'src')
    }
};
// sync object
module.exports = {
    verbose: true,
    collectCoverage: true,
    collectCoverageFrom: ["**/*.ts", "!**/node_modules/**"],
    testMatch: ["**/main.ts"],
    globals: {
        "ts-jest": {
            useESM: true,
        },
    },
    transform: {
        "^.+\\.jsx?$": "babel-jest",
    },
    transformIgnorePatterns: [],
    preset: "ts-jest",
    testEnvironment: "node",
    roots: ["./"],
};

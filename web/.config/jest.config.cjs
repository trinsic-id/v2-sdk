// sync object
module.exports = {
    verbose: true,
    collectCoverage: true,
    collectCoverageFrom: ['**/src/**/*.ts', '!**/node_modules/**'],
    testMatch: [
        '**/test/*.test.ts'
    ],
    globals: {
        'ts-jest': {
            useESM: true,
        },
    },
    transform: {
        "^.+\\.jsx?$": "babel-jest"
    },
    transformIgnorePatterns: [],
    preset: 'ts-jest',
    testEnvironment: 'node',
    roots: ['../trinsic-node/test']
}
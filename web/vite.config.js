export default {
    build: {
        target: 'ES2017',
        lib: {
            entry: 'src/index.ts',
            name: '@trinsic/trinsic',
        },
        rollupOptions: {
            // Add any additional Rollup options here
        },
    },
};

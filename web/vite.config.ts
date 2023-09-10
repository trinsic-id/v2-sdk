import { defineConfig } from "vite";
import dts from "vite-plugin-dts";
import path from "path";

// https://vitejs.dev/config/
// export default defineConfig({
//     plugins: [dts()],
//     build: {
//         outDir: "dist",
//         rollupOptions: {},
//         sourcemap: true,
//         target: "esnext",
//     },
// });

export default defineConfig({
    plugins: [dts()],
    build: {
        lib: {
            entry: path.resolve(__dirname, "index.browser.ts"),
            name: "Trinsic",
            formats: ["es", "umd"],
        },
        rollupOptions: {
            // Make sure to externalize dependencies that shouldn't be bundled
            // into your library
        },
    },
});

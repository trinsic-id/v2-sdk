import { defineConfig } from "vite";
import dts from "vite-plugin-dts";

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [dts()],
    build: {
        rollupOptions: {},
        lib: {
            entry: "index.browser.ts",
            name: "trinsic",
            formats: ["umd", "es"],
        },
        sourcemap: true,
        target: "es2020",
    },
});

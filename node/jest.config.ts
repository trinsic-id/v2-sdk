import type {InitialOptionsTsJest} from "ts-jest";
import {defaults as tsjPreset} from 'ts-jest/presets'

const config: InitialOptionsTsJest = {
  transform: {
    ...tsjPreset.transform
  },
  testMatch: ["**/test/*.test.ts", "**/test/*.spec.ts"],
  preset: "ts-jest"
}

export default config

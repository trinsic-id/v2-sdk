import {useState} from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import {connectGetSession, connectInit, FlowType, SessionResult, showTrinsicConnect} from "./shared.ts";
import {CodeBlock, dracula} from "react-code-blocks";
import {useInterval} from "./util.ts";

function App() {
    const [clientToken, setClientToken] = useState("N/A");
    const [verifiablePresentation, setVerifiablePresentation] = useState("No VP");
    const [verifyStatus, setVerifyStatus] = useState("No Flippin Idea");

    useInterval(async () => {
        // const result = await connectGetSession();
        // setVerifyStatus(result.status);
    }, 5000);

    // @ts-ignore
    return (
        <>
            <div>
                <a href="https://vitejs.dev" target="_blank">
                    <img src={viteLogo} className="logo" alt="Vite logo" />
                </a>
                <a href="https://react.dev" target="_blank">
                    <img
                        src={reactLogo}
                        className="logo react"
                        alt="React logo"
                    />
                </a>
            </div>
            <h1>Vite + React</h1>
            <div className="card">
                <p>
                    Client token:
                </p>
                <pre>{clientToken}</pre>
                <button
                    onClick={async () => {
                        const result: SessionResult = await connectInit();
                        setClientToken(result.client_token);
                    }}
                >
                    Initialize Trinsic Connect
                </button>
                <button
                    onClick={async () => {
                        try {
                            const sessionId = await showTrinsicConnect(clientToken, {flowType: FlowType.POPUP});
                            console.log("TODO - Handle the actual session ID - " + sessionId);
                            // TODO - Handle the actual session ID
                            const vpResult = await connectGetSession();
                            setVerifiablePresentation(vpResult.verifiable_presentation);
                        } catch (e) {
                            console.error(e);
                        }
                    }}
                >
                    Show Trinsic Connect
                </button>
                <button
                    onClick={async () => {
                        const result = await connectGetSession();
                        setVerifyStatus(result.status);
                    }}
                    >Refresh Status</button>
                <div><b>Current Status:</b> {verifyStatus}</div>
                <CodeBlock
                    // @ts-ignore
                    text={verifiablePresentation}
                    language={"json"}
                    showLineNumbers={true}
                    theme={dracula}
                />
                <p>
                    Edit <code>src/App.tsx</code> and save to test HMR
                </p>
            </div>
            <p className="read-the-docs">
                Click on the Vite and React logos to learn more
            </p>
        </>
    );
}

export default App;

import express from "express";

const app = express();
const port = 3000;

app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.get("/connect_init", (req, res) => {
    // TODO - Trinsic service initialize
    // TODO - Open connect session using government id
    // TODO - Save the `id` somewhere in a memory DB
    // TODO - Return the client_token to the user
});

app.listen(port, () => {
    return console.log(`Express is listening at http://localhost:${port}`);
});

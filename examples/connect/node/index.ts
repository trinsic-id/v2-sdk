import express from 'express';
import connectRoutes from './src/routes';

const app = express();
const port = 3000;

app.use('/api', connectRoutes);
app.use("/", (req, res) => {
    res.send("Hello World!");
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

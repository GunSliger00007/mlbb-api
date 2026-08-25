import express from 'express';

const app = express();
const PORT = process.env.PORT || 7000;

app.get('/test', (req, res) => {
  res.send('Hello, World!');
});


const server = app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log(`URL : http://localhost:${PORT}`);
});

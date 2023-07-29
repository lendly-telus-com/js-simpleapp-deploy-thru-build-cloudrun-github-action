const express = require('express');
const app = express();

app.get('/hello', async (req, res) => {
  try {
    return res.json({ message: 'Hello Pogs!!!' });
  } catch (err) {
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.listen(8081, () => {
  console.log('Server is running on port 8081');
});

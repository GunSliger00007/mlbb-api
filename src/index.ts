import express from 'express';

// Import Routes Section
import nightlyRoutes from '@/routes/nightlyRoutes.js';
import heroesRoutes from '@/routes/heroesRoutes.js';

// Initialize the Express app
const app = express();
const PORT = process.env.PORT || 7000;

// Default Routes
app.get('/', (req, res) => {
  res.json({
    message: 'Welcome to the MLBB API (Stable)'
  });
});

app.use('/nightly', nightlyRoutes);

// Custom API Routes
app.use('/heroes', heroesRoutes);

// Start of the server
const server = app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log(`URL : http://localhost:${PORT}`);
});

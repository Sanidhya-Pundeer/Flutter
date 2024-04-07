const express = require('express');
const cors = require('cors');
const recipesRoutes = require('./routes/Routes');

const app = express();
const PORT = process.env.PORT || 3000; // Default port is 3000, can be overridden by environment variable

// Middleware to parse JSON bodies
app.use(express.json());

app.use(cors());

// Routes
app.use('/api', recipesRoutes);

// Handling invalid routes
app.use((req, res) => {
  res.status(404).json({ message: 'Route not found' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: 'Internal server error' });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

module.exports = app;

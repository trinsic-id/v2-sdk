const path = require('path');

module.exports = {
  mode: 'development',
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, './src'),
    filename: 'bundle.js',
  },
  resolve: {
    fallback: {
      https: false,
      http: false,
      url: false
    }
  }
};
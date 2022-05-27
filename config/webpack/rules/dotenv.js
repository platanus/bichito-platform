const Dotenv = require('dotenv-webpack');
const path = require('path');

module.exports = {
  plugins: [
    new Dotenv({
      path: path.resolve(__dirname, '..', '..', '..', '.env.local'),
      defaults: path.resolve(__dirname, '..', '..', '..', '.env.development'),
      silent: true,
    }),
  ],
};

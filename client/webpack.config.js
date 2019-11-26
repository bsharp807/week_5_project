const Dotenv = require('dotenv-webpack')

const config = {
  entry: `${ __dirname }/src/app.js`,
  output: {
    filename: 'bundle.js',
    path: `${ __dirname }/public/js`
  },
  mode: 'development',
  plugins: [
    new Dotenv({
      path: "./.env"
    })
  ]
};

module.exports = config;

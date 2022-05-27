const { webpackConfig, merge } = require('shakapacker');
const { vueConfig, cssConfig, jQueryConfig, typescriptConfig, dotenvConfig } = require('./rules');

module.exports = merge(vueConfig, typescriptConfig, cssConfig, jQueryConfig, webpackConfig, dotenvConfig);

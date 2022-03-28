/* eslint-disable no-undef */
const { fontFamily } = require('tailwindcss/defaultTheme');

module.exports = {
  theme: {
    extend: {
      fontFamily: {
        sans: ['Ubuntu', ...fontFamily.sans],
      },
    },
  },
  variants: {},
  plugins: [],
  content: [
    './app/**/*.html',
    './app/**/*.vue',
    './app/**/*.js',
    './app/**/*.erb',
  ],
};

/* eslint-disable no-undef */
const { fontFamily } = require('tailwindcss/defaultTheme');

module.exports = {
  theme: {
    extend: {
      fontFamily: {
        sans: ['Ubuntu', ...fontFamily.sans],
      },
      aspectRatio: {
        '21/20': '21 / 20',
        '5/4': '5 / 4',
      },
      rotate: {
        '15': '15deg',
        '25': '25deg',
      },
    },
  },
  variants: {},
  plugins: [
    require('@tailwindcss/line-clamp'),
  ],
  content: [
    './app/**/*.html',
    './app/**/*.vue',
    './app/**/*.js',
    './app/**/*.erb',
  ],
};

/* eslint-disable no-undef */
const { fontFamily } = require('tailwindcss/defaultTheme');

module.exports = {
  theme: {
    extend: {
      fontFamily: {
        sans: ['Ubuntu', ...fontFamily.sans],
      },
      aspectRatio: {
        '5/4': '5 / 4',
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

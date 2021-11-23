module.exports = {
  mode: 'jit',
  purge:
  {
    content: [
      './app/**/*.html.erb',
      './app/**/*.html',
      './public/packs/*.js',
      './src/**/*.{js,jsx,ts,tsx,vue}',
      './app/helpers/**/*.rb',
      './app/javascript/**/*.js',
      './app/javascript/**/*.scss',
    ],
    options: {
      safelist: [
        /data-theme$/,
      ]
    },
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('daisyui')

  ],
}

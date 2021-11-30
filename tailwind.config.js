module.exports = {
  mode: 'jit',
  future: {
    purgeLayersByDefault: true,
    removeDeprecatedGapUtilities: true,
  },
  purge:
    [
      './app/**/*/*.html.erb',
      './app/helpers/**/*/*.rb',
      './app/javascript/**/*/*.js',
      './app/javascript/**/*.svelte',
    ],
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

// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
module.exports = {
  content: [
    './js/**/*.js',
    '../lib/*_web.ex',
    '../lib/*_web/**/*.*ex'
  ],
  theme: {
    borderRadius: {
      'round': '100px',
      'x-large': '16px',
      'large': '8px',
      'medium': '4px',
      'small': '2px',
    },
    fontSize: {
      10: ['57px', {lineHeight: '72px'}],
      9: ['48px', {lineHeight: '72px'}],
      8: ['40px', {lineHeight: '56px'}],
      7: ['33px', {lineHeight: '48px'}],
      6: ['28px', {lineHeight: '40px'}],
      5: ['23px', {lineHeight: '32px'}],
      4: ['19px', {lineHeight: '24px'}],
      3: ['16px', {lineHeight: '24px'}],
      2: ['13px', {lineHeight: '16px'}],
      1: ['11px', {lineHeight: '16px'}],
    },
    extend: {
      colors: {
        base: {
          // DEFAULT: "?"
          white: "#FFFFFF",
          black: "#111111",
          gray: {
            98: "#FAFAFA",
            95: "#F2F2F2",
            90: "#E5E5E5",
            80: "#CCCCCC",
            70: "#B2B2B2",
            60: "#999999",
            50: "#808080",
            40: "#666666",
            30: "#4D4D4D",
            20: "#333333",
            15: "#262626",
          }
        },
        brand: {
          teal: {
            98: "#F7FDFC",
            95: "#ECF9F8",
            90: "#D8F3F0",
            80: "#B2E6E1",
            70: "#B2E6E1",
            60: "#64CEC3",
            50: "#3DC2B5",
            40: "#319B90",
            30: "#24756D",
            25: "#1E615B",
            20: "#184E49",
          },
          gray: {
            98: "#FAFAFA",
            95: "#F1F2F3",
            90: "#E4E6E7",
            80: "#C8CCD0",
            70: "#ADB2B8",
            60: "#9299A0",
            45: "#6B727B",
            35: "#535960",
            25: "#3B4044",
            20: "#2F3337",
            15: "#242629",
          },
          yellow: {
            98: "#FFFEF5",
            95: "#FFFBE6",
            90: "#FEF8CD",
            80: "#FEF09A",
            70: "#FDE968",
            60: "#FDE968",
            50: "#FBDC04",
            45: "#E2C604",
            40: "#C8B004",
            35: "#AF9A03",
            25: "#7D6E03",
          },
        }
      },
      backgroundColor: ({ theme }) => ({
        'button': theme('colors.brand')
        // 'button-background': "#FDE968"
      }),
      fontFamily: {
        body: ['Open Sans', 'sans-serif'],
        header: ['Abril Fatface', 'Open Sans', 'sans-serif']
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
  ]
}

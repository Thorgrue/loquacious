module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
       'title-play': ['"Playfair Display SC"', 'serif'],
       'body-philo': ['Philosopher', 'sans-serif']
      },
      margin: {
       '0.5': '0.125rem',
      },
      screens: {
        'xxs': '362px',
      }
    },
    textColor: {
      'cloudy': '#616d93',
    },
  },
  variants: {
    extend: {
      borderWidth: ['hover'],
    },
  },
  plugins: [],
};

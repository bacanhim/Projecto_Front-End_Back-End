import Vue from 'vue'
import '@fortawesome/fontawesome-free/css/all.css'
import Vuetify from 'vuetify/lib'
import 'vuetify/src/stylus/app.styl'

Vue.use(Vuetify, {
  iconfont: 'fa',
  theme: {
    primary: 'cyan lighten-5',
    secondary: 'purple'
  },
  options: {
    themeVariations: ['primary', 'secondary']
  }
})

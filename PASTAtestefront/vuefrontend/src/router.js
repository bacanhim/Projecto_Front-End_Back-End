import Vue from 'vue'
import Router from 'vue-router'
import Login from './components/Login.vue'
import Home from './views/Home.vue'
import Profile from './components/Profile.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  // base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'Login',
      component: Login
    },
    {
      path: '/home',
      name: 'Home',
      component:Home
    },
    {
      path: '/profile',
      name: 'Profile',
      component: Profile
    }
  ]
})

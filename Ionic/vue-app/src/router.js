import Vue from 'vue';
import Home from './views/Home.vue';
import { IonicVueRouter } from '@ionic/vue';

Vue.use(IonicVueRouter);

export default new IonicVueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/amigos',
      name: 'amigos',
      component: () =>
        import(/* webpackChunkName: "about" */ './views/Amigos.vue')

    },
    {
      path: '/explorar',
      name: 'explorar',
      component: () =>
        import(/* webpackChunkName: "about" */ './views/Explorar.vue')
    },
    {
      path: '/definicoes',
      name: 'definicoes',
      component: () =>
        import(/* webpackChunkName: "about" */ './views/Definicoes.vue')
    },
    {
      path: '/perfil',
      name: 'perfil',
      component: () =>
        import(/* webpackChunkName: "about" */ './views/Perfil.vue')
    }
    
  ]
});
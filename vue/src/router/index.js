import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue';
import Prices from '../views/Prices.vue'

Vue.use(Router)

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/prices',
      name: 'prices',
      component: Prices,
      meta: {
        requiresAuth: false
      }
    },
  ],
})

export default router;
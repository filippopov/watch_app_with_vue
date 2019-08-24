import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/home/Home'
import Register from './components/authentication/Register'
import Login from './components/authentication/Login'
import WatchCollection from './components/watches/WatchCollection'
import WatchDetails from './components/watches/WatchDetails'
import WatchCreate from './components/watches/WatchCreate'
import WatchEdit from './components/watches/WatchEdit'

Vue.use(Router);

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: "/register",
      name: "register",
      component: Register
    },
    {
      path: "/login",
      name: "login",
      component: Login
    },
    {
      path: "/watch/collection",
      name: "watchCollection",
      component: WatchCollection
    },
    {
      path: "/watch/create",
      name: "watchCreate",
      component: WatchCreate
    },
    {
      path: "/watch/details/:id",
      name: "watchDetails",
      component: WatchDetails
    },
    {
      path: "/watch/edit/:id",
      name: "watchEdit",
      component: WatchEdit
    }
  ]
})

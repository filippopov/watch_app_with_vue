import Vue from 'vue'
import Vuex from 'vuex'
import authenticationServices from './services/authenticationServices'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {

  },
  mutations: {

  },
  actions: {

  },
  modules: {
    authenticationServices: {
      namespaced: true,
      ...authenticationServices
    }
  }
})

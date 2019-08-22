import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify';
import Vuelidate from "vuelidate"
import VueResource from 'vue-resource'

Vue.config.productionTip = false;
Vue.use(Vuelidate);
Vue.use(VueResource);

Vue.http.options.root = 'http://localhost/watch_app_with_vue/api';

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')

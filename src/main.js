/* eslint-disable */
import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import { BootstrapVue, IconsPlugin } from "bootstrap-vue";
import { sync } from "vuex-router-sync";
const unsync = sync(store, router);
Vue.use(IconsPlugin);
Vue.use(BootstrapVue);

import 'vuesax/dist/vuesax.css'

import PrimeVue from 'primevue/config';
import Vuesax from 'vuesax'

import Dialog from 'primevue/dialog';
import Button from 'primevue/button';

import Paginator from 'primevue/paginator';

Vue.use(PrimeVue);
Vue.use(Vuesax);

Vue.component('Paginator', Paginator);
Vue.component('Dialog', Dialog);
Vue.component('Button', Button);

Vue.config.productionTip = false;
unsync();
import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-vue/dist/bootstrap-vue.css";
import vuetify from "./plugins/vuetify";
new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount("#app");



import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import { sync } from "vuex-router-sync";
const unsync = sync(store, router);
import vuetify from './plugins/vuetify'

//----------------------------- Bootstrap and BootstrapVue --------------------------------
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'

// Import Bootstrap and BootstrapVue CSS files (order is important)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

// Make BootstrapVue available throughout your project
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)


//----------------------------- PrimeVue ---------------------------------------------------
import 'primevue/resources/themes/saga-blue/theme.css'
import 'primevue/resources/primevue.min.css'

import PrimeVue from 'primevue/config';
import ToastService from 'primevue/toastservice';
import Toast from 'primevue/toast';

Vue.use(PrimeVue);
Vue.use(ToastService);

Vue.component('Toast', Toast);


//----------------------------- Vuesax ----------------------------------------------------
import Vuesax from 'vuesax'

import 'vuesax/dist/vuesax.css' //Vuesax styles
Vue.use(Vuesax)


//-----------------------------------------------------------------------------------------

Vue.config.productionTip = false
unsync();
new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')



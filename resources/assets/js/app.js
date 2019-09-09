

window.Vue = require('vue');


import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import locale from 'element-ui/lib/locale/lang/es';

Vue.use(ElementUI, {
  locale
});


Vue.component('request-process', require('./components/solicitudes/newSolicitud.vue'));
Vue.component('steps-process', require('./components/solicitudes/steps.vue'));

const app = new Vue({
  el: '#main'
});

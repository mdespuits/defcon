import Vue from "vue";
import App from "./src/App.vue";
import CompositionApi from "@vue/composition-api";

Vue.config.productionTip = false;
Vue.use(CompositionApi);

new Vue({ render: h => h(App) }).$mount("#app");

import Trend from 'vuetrend'
Vue.use(Trend)
import Http from 'vue-resource'
Vue.use(Http)

Vue.http.interceptors.push({
  request: function (request) {
    Vue.http.headers.common['X-CSRF-Token'] = $('[name="csrf-token"]').attr('content');
    return request;
  },
  response: function (response) {
    return response;
  }
});


new Vue({el: '#app'})

import {REGISTER_USER} from './../mutattion-types'
import {ROOT_URL} from './../constants'
import router from '@/router'

const setResult = data => {
  return {
    type: REGISTER_USER,
    data
  }
};

export default {
  state: {
    user: {
      session_id: '',
      user_id: ''
    },
    success: false,
    message: ''
  },
  getters: {
    getUser: state => state.user,
    getMessage: state => state.message,
    getResult: state => state.success
  },
  mutations: {
    REGISTER_USER: (state, payload) => {
      state.success = payload.data.success;
      state.message = payload.data.message;

      if (state.success) {
        state.user.session_id = payload.data.data.session_id;
        state.user.user_id = payload.data.data.user_id;
      }
    }
  },
  actions: {
    registerUser(context, params) {
      let formData = new FormData();
      formData.append('email', params.email);
      formData.append('password', params.password);
      formData.append('repeatPass', params.repeatPassword);

      return fetch(`${ROOT_URL}/user/register`, {
          method: 'POST', // or 'PUT'
          body: formData, // data can be `string` or {object}!
      }).then(res => res.json()).then((data) => {
        context.commit(setResult(data));
        if (data.success) {
          router.push('/');
        }
      })
    }
  }
}

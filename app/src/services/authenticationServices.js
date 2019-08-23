import {REGISTER_USER, LOGIN_USER, LOGOUT_USER} from './../mutattion-types'
import {ROOT_URL} from './../constants'
import router from '@/router'
import notify from './../plugins/notify'

const Register = data => {
  return {
    type: REGISTER_USER,
    data
  }
};

const Login = data => {
  return {
    type: LOGIN_USER,
    data
  }
};

const Logout = data => {
  return {
    type: LOGOUT_USER,
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
    message: '',
    isAuthenticated: false
  },
  getters: {
    getUser: state => state.user,
    getMessage: state => state.message,
    getResult: state => state.success,
    isAuthenticated: state => {
      return state.isAuthenticated || sessionStorage.getItem('session_id');
    },
    getSessionId: () => {
      return sessionStorage.getItem('session_id');
    },
    getUserId: () => {
      return sessionStorage.getItem('user_id');
    }
  },
  mutations: {
    REGISTER_USER: (state, payload) => {
      state.success = payload.data.success;
      state.message = payload.data.message;

      if (state.success) {
        state.user.session_id = payload.data.data.session_id;
        state.user.user_id = payload.data.data.user_id;
        state.isAuthenticated = true;
      }
    },
    LOGIN_USER: (state, payload) => {
      state.success = payload.data.success;
      state.message = payload.data.message;

      if (state.success) {
        state.user.session_id = payload.data.data.session_id;
        state.user.user_id = payload.data.data.user_id;
        state.isAuthenticated = true;
      }
    },
    LOGOUT_USER: (state, payload) => {
      state.success = false;
      state.message = '';
      state.isAuthenticated = false;
      state.user.session_id = '';
      state.user.user_id = '';
      sessionStorage.removeItem("session_id");
      sessionStorage.removeItem("user_id");
    }
  },
  actions: {
    registerUser(context, params) {
      let formData = new FormData();
      formData.append('email', params.email);
      formData.append('password', params.password);
      formData.append('repeatPass', params.repeatPassword);

      fetch(`${ROOT_URL}/user/register`, {
          method: 'POST',
          body: formData,
      }).then(res => res.json()).then((data) => {
        context.commit(Register(data));
        if (data.success) {
          notify.showInfo(data.message);
          sessionStorage.setItem('session_id', data.data.session_id);
          sessionStorage.setItem('user_id', data.data.user_id);
          router.push('/watch-collection');
        } else {
          notify.showError(data.message);
        }
      })
    },
    loginUser(context, params) {
      let formData = new FormData();
      formData.append('email', params.email);
      formData.append('password', params.password);

      fetch(`${ROOT_URL}/user/login`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        context.commit(Login(data));

        if (data.success) {
          notify.showInfo(data.message);
          sessionStorage.setItem('session_id', data.data.session_id);
          sessionStorage.setItem('user_id', data.data.user_id);
          router.push('/watch-collection');
        } else {
          notify.showError(data.message);
        }
      })
    },
    logoutUser(context) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));

      fetch(`${ROOT_URL}/user/logout`, {
        method: 'POST'
      }).then(res => res.json()).then((data) => {
        context.commit(Logout(data));
        if (data.success) {
          notify.showInfo(data.message);
        } else {
          notify.showError(data.message);
        }

        router.push('/login');
        location.reload()
      })
    }
  }
}

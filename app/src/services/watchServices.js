import {LOAD_COLLECTION} from './../mutattion-types'
import {ROOT_URL} from './../constants'
import router from '@/router'
import notify from './../plugins/notify'

const GetWatchCollection = data => {
  return {
    type: LOAD_COLLECTION,
    data
  }
};

export default {
  state: {
    watchCollection: []
  },
  getters: {
    getWatchCollection: state => state.watchCollection,
  },
  mutations: {
    LOAD_COLLECTION: (state, payload) => {
      state.watchCollection = payload.data.data;
    },
  },
  actions: {
    loadCollection(context) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('userId', sessionStorage.getItem('user_id'));

      fetch(`${ROOT_URL}/home/homePage`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        context.commit(GetWatchCollection(data));
      })
    }
  }
}

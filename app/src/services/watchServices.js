import {LOAD_COLLECTION, LOAD_WATCH_DATA, LOAD_WATCH_PICTURES, LOAD_WATCH_CREATE_FORM_DATA} from './../mutattion-types'
import {ROOT_URL} from './../constants'
import router from '@/router'
import notify from './../plugins/notify'

const GetWatchCollection = data => {
  return {
    type: LOAD_COLLECTION,
    data
  }
};

const GetWatchData = data => {
  return {
    type: LOAD_WATCH_DATA,
    data
  }
};

const GetWatchPictures = data => {
  return {
    type: LOAD_WATCH_PICTURES,
    data
  }
};

const GetCreateFormData = data => {
  return {
    type: LOAD_WATCH_CREATE_FORM_DATA,
    data
  }
};

export default {
  state: {
    watchCollection: [],
    watch: {},
    watchPictures: {},
    watchCreateFormData: {}
  },
  getters: {
    getWatchCollection: state => state.watchCollection,
    getWatchData: state => state.watch,
    watchPictures: state => state.watchPictures,
    watchCreateFormData: state => state.watchCreateFormData
  },
  mutations: {
    LOAD_COLLECTION: (state, payload) => {
      state.watchCollection = payload.data.data;
    },
    LOAD_WATCH_DATA: (state, payload) => {
      state.watch = payload.data.data;
    },
    LOAD_WATCH_PICTURES: (state, payload) => {
      state.watchPictures = payload.data.data;
    },
    LOAD_WATCH_CREATE_FORM_DATA: (state, payload) => {
      state.watchCreateFormData = payload.data.data;
    }
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
    },
    getWatchById(context, id) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('user_id', sessionStorage.getItem('user_id'));
      formData.append('watch_id', id);

      fetch(`${ROOT_URL}/home/watchData`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          // notify.showInfo(data.message);
          context.commit(GetWatchData(data));
        } else {
          // notify.showError(data.message);
        }
      })
    },
    getWatchPictures(context, id) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('user_id', sessionStorage.getItem('user_id'));
      formData.append('watch_id', id);

      fetch(`${ROOT_URL}/home/watchPictures`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          // notify.showInfo(data.message);
          context.commit(GetWatchPictures(data));
        } else {
          // notify.showError(data.message);
        }
      })
    },
    getCreateWatchFormData(context){
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('userId', sessionStorage.getItem('user_id'));

      fetch(`${ROOT_URL}/home/getWatchFormData`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          // notify.showInfo(data.message);
          context.commit(GetCreateFormData(data));
        } else {
          // notify.showError(data.message);
        }
      })
    },
    addWatchAction(context, params) {
      // let base_caliber = ctx.params.base_caliber;
      // let bazel_material = ctx.params.bazel_material;
      // let bracelet_color = ctx.params.bracelet_color;
      // let bracelet_material = ctx.params.bracelet_material;
      // let brand = ctx.params.brand;
      // let caliber = ctx.params.caliber;
      // let calsp_material = ctx.params.calsp_material;
      // let case_diameter = ctx.params.case_diameter;
      // let case_material = ctx.params.case_material;
      // let clasp = ctx.params.clasp;
      // let dial = ctx.params.dial;
      // let dial_numerals = ctx.params.dial_numerals;
      // let frequency = ctx.params.frequency;
      // let gender = ctx.params.gender;
      // let glass = ctx.params.glass;
      // let model = ctx.params.model;
      // let movement = ctx.params.movement;
      // let picture = ctx.params.picture;
      // let power_reserve = ctx.params.power_reserve;
      // let reference_number = ctx.params.reference_number;
      // let thickness = ctx.params.thickness;
      // let watch_characteristics = ctx.params['watch_characteristics[]'];
      // let watch_functions = ctx.params['watch_functions[]'];
      // let water_resistance = ctx.params.water_resistance;
      // let number_of_jewels = ctx.params.number_of_jewels;


      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('userId', sessionStorage.getItem('user_id'));
      formData.append('brand', params.brand);
      formData.append('model', params.model);
      formData.append('reference_number', params.referenceNumber);

      fetch(`${ROOT_URL}/home/addWatch`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        console.log(data);
        if (data.success) {
          notify.showInfo(data.message);
          router.push('/watch/collection')
        } else {
          notify.showError(data.message);
        }
      })
    }
  }
}

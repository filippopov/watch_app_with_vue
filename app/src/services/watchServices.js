import {LOAD_COLLECTION, LOAD_WATCH_DATA, LOAD_WATCH_PICTURES, LOAD_WATCH_CREATE_FORM_DATA, LOAD_WATCH_EDIT_FORM_DATA, LOAD_WATCH_FUNCTIONS, LOAD_WATCH_CHARACTERISTICS} from './../mutattion-types'
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

const GetEditFormData = data => {
  return {
    type: LOAD_WATCH_EDIT_FORM_DATA,
    data
  }
};

const GetWatchFunctionsById = data => {
  return {
    type: LOAD_WATCH_FUNCTIONS,
    data
  }
};

const GetWatchCharacteristicsById = data => {
  return {
    type: LOAD_WATCH_CHARACTERISTICS,
    data
  }
};

export default {
  state: {
    watchCollection: [],
    watch: {},
    watchPictures: {},
    watchCreateFormData: {},
    watchEditFormData: {},
    editFormData: {},
    watchFunctions: {},
    watchCharacteristics: {}
  },
  getters: {
    getWatchCollection: state => state.watchCollection,
    getWatchData: state => state.watch,
    watchPictures: state => state.watchPictures,
    watchCreateFormData: state => state.watchCreateFormData,
    watchEditFormData: state => state.watchEditFormData,
    editFormData: state => state.editFormData,
    watchFunctions: state => state.watchFunctions,
    watchCharacteristics: state => state.watchCharacteristics
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
    },
    LOAD_WATCH_EDIT_FORM_DATA: (state, payload) => {
      state.watchEditFormData = payload.data.data;
      state.editFormData = payload.data.data.watchData[0];
    },
    LOAD_WATCH_FUNCTIONS: (state, payload) => {
      state.watchFunctions = payload.data.data;
    },
    LOAD_WATCH_CHARACTERISTICS: (state, payload) => {
      state.watchCharacteristics = payload.data.data;
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
    getWatchFunctions(context, id) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('user_id', sessionStorage.getItem('user_id'));
      formData.append('watch_id', id);

      fetch(`${ROOT_URL}/home/watchFunctions`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          // notify.showInfo(data.message);
          context.commit(GetWatchFunctionsById(data));
        } else {
          // notify.showError(data.message);
        }
      })
    },
    getWatchCharacteristics(context, id) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('user_id', sessionStorage.getItem('user_id'));
      formData.append('watch_id', id);

      fetch(`${ROOT_URL}/home/watchCharacteristics`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          // notify.showInfo(data.message);
          context.commit(GetWatchCharacteristicsById(data));
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
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('userId', sessionStorage.getItem('user_id'));
      formData.append('brand', params.brand);
      formData.append('model', params.model);
      formData.append('reference_number', params.referenceNumber);
      formData.append('gender', params.gender);
      formData.append('movement', params.movement);
      formData.append('case_material', params.caseMaterial);
      formData.append('bracelet_material', params.braceletMaterial);
      formData.append('case_diameter', params.caseDiameter);
      formData.append('bracelet_color', params.braceletColor);
      formData.append('calsp_material', params.claspMaterial);
      formData.append('clasp', params.clasp);
      formData.append('bazel_material', params.bezelMaterial);
      formData.append('thickness', params.thickness);
      formData.append('water_resistance', params.waterResistance);
      formData.append('dial', params.dial);
      formData.append('dial_numerals', params.dialNumeral);
      formData.append('glass', params.glass);
      formData.append('caliber', params.caliber);
      formData.append('base_caliber', params.baseCaliber);
      formData.append('power_reserve', params.powerReserve);
      formData.append('number_of_jewels', params.numberOfJewels);
      formData.append('frequency', params.frequency);
      formData.append('watch_functions', params.watchFunctions);
      formData.append('watch_characteristics', params.watchCharacteristics);

      fetch(`${ROOT_URL}/home/addWatch`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          notify.showInfo(data.message);
          router.push('/watch/collection')
        } else {
          notify.showError(data.message);
        }
      })
    },
    getEditWatchFormData(context, id) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('user_id', sessionStorage.getItem('user_id'));
      formData.append('watch_id', id);

      fetch(`${ROOT_URL}/home/getEditWatchForm`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          // notify.showInfo(data.message);
          context.commit(GetEditFormData(data));
        } else {
          // notify.showError(data.message);
        }
      })
    },
    editWatchAction(context, params) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('userId', sessionStorage.getItem('user_id'));
      formData.append('watch_id', params.id);
      formData.append('brand', params.brand);
      formData.append('model', params.model);
      formData.append('reference_number', params.referenceNumber);

      fetch(`${ROOT_URL}/home/editWatch`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
        if (data.success) {
          notify.showInfo(data.message);
          router.push('/watch/collection')
        } else {
          notify.showError(data.message);
        }
      })
    },
    deleteWatchAction(context, id) {
      let formData = new FormData();
      formData.append('session_id', sessionStorage.getItem('session_id'));
      formData.append('userId', sessionStorage.getItem('user_id'));
      formData.append('watch_id', id);

      fetch(`${ROOT_URL}/home/deleteWatch`, {
        method: 'POST',
        body: formData,
      }).then(res => res.json()).then((data) => {
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

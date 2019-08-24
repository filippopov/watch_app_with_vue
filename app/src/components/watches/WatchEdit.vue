<template>
  <div>
    <div class="title">
      <h2>Edit Watch</h2>
    </div>

    <form @submit.prevent="editWatch">
      <h3>My watch</h3>
      <label for="brand">Brand*</label>
      <select id="brand" v-model.trim="$v.brand.$model">
        <option value="">Please select</option>
        <option v-for="brand in watchEditFormData.brands" :key="brand.id" :value="brand.id">{{brand.name}}</option>
      </select>
      <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.brand.required">Brand is required.</p>

      <label for="model">Model*</label>
      <input type="text" id="model" name="model" placeholder="Enter ..." v-model.trim="$v.model.$model">
      <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.model.required">Model is required.</p>

      <label for="reference-number">Reference number</label>
      <input type="text" id="reference-number" v-model="$v.referenceNumber.$model"  name="reference-number" class="form-control" placeholder="Enter ...">
      <input type="submit" value="Submit">

      <p class="typo__p" v-if="submitStatus === 'ERROR'">Please fill the form correctly.</p>
    </form>
  </div>
</template>

<script>
    import {
      required
    } from 'vuelidate/lib/validators'
    import {mapState, mapGetters, mapMutations, mapActions} from 'vuex'
    export default {
      name: "WatchEdit",
      data(){
        return {
          brand: '',
          model: '',
          referenceNumber: '',
          submitStatus: null,
          isHidden: false
        }
      },
      validations: {
        brand: {
          required
        },
        model: {
          required
        },
        referenceNumber: {},
      },
      computed: {
        ...mapGetters('authenticationServices', ['isAuthenticated']),
        ...mapGetters('watchServices', ['watchEditFormData', 'editFormData']),
      },
      methods: {
        ...mapActions('watchServices', ['getEditWatchFormData', 'editWatchAction']),
        editWatch(){

          if (this.$v.$invalid) {
            this.submitStatus = 'ERROR';
            this.isHidden = true;
          }
          else {
            let params = {
              'id': this.$route.params.id,
              'brand': this.brand,
              'model': this.model,
              'referenceNumber': this.referenceNumber,
            };
            this.editWatchAction(params);
            this.submitStatus = '';
            this.isHidden = true;
          }
        }
      },
      created() {
        if (!this.isAuthenticated) {
          this.$router.push('/login');
        }

        this.getEditWatchFormData(this.$route.params.id);
      }
    }
</script>

<style scoped>
  .title {
    text-align: center;

  }

  .title h2 {
    font-weight: bold;
    font-size: 4rem;
  }

  .title h2:after {
    display: block;
    content: '';
    border-bottom: 1px solid #CCC;
    width: 30rem;
    margin: 1rem auto;
  }

  input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type=submit]:hover {
    background-color: #45a049;
  }

  .error,
  .typo__p
  {
    color: red;
    text-align: center;
  }

  .error {
    display: none;
  }

  .show {
    display: block;
  }
</style>

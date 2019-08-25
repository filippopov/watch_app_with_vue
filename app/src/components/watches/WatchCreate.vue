<template>
  <div>
    <div class="title">
      <h2>Add Watch</h2>
    </div>

    <form @submit.prevent="addWatch">
      <h3>My watch</h3>
      <label for="brand">Brand*</label>
      <select id="brand" v-model.trim="$v.brand.$model">
        <option value="">Please select</option>
        <option v-for="brand in watchCreateFormData.brands" :key="brand.id" :value="brand.id">{{brand.name}}</option>
      </select>
      <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.brand.required">Brand is required.</p>

      <label for="model">Model*</label>
      <input type="text" id="model" name="model" placeholder="Enter ..." v-model.trim="$v.model.$model">
      <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.model.required">Model is required.</p>

      <label for="reference-number">Reference number</label>
      <input type="text" id="reference-number" v-model.trim="$v.referenceNumber.$model" class="form-control" placeholder="Enter ...">

      <h3>Enter the most important details</h3>

      <label for="gender">Gender</label>
      <select id="gender" v-model.trim="$v.gender.$model">
        <option value="">Please select</option>
        <option v-for="gender in watchCreateFormData.genders" :key="gender.id" :value="gender.id">{{gender.name}}</option>
      </select>

      <label for="movement">Movement</label>

      <select id="movement" v-model.trim="$v.movement.$model">
        <option value="">Please select</option>
        <option v-for="movement in watchCreateFormData.movements" :key="movement.id" :value="movement.id">{{movement.name}}</option>
      </select>

      <label for="case-material">Case Material</label>

      <select id="case-material" v-model.trim="$v.caseMaterial.$model">
        <option value="">Please select</option>
        <option v-for="caseMaterial in watchCreateFormData.caseMaterials" :key="caseMaterial.id" :value="caseMaterial.id">{{caseMaterial.name}}</option>
      </select>

      <label for="case-material">Bracelet Material</label>

      <select id="bracelet-material" v-model.trim="$v.braceletMaterial.$model">
        <option value="">Please select</option>
        <option v-for="braceletMaterial in watchCreateFormData.braceletMaterials" :key="braceletMaterial.id" :value="braceletMaterial.id">{{braceletMaterial.name}}</option>
      </select>

      <label for="case-diameter">Case diameter</label>
      <input type="text" id="case-diameter" v-model.trim="$v.caseDiameter.$model" class="form-control" placeholder="Enter ...">

      <h3>Bracelet/strap</h3>

      <label for="bracelet-color">Bracelet Color</label>
      <select id="bracelet-color" v-model.trim="$v.braceletColor.$model">
        <option value="">Please select</option>
        <option v-for="braceletColor in watchCreateFormData.braceletColors" :key="braceletColor.id" :value="braceletColor.id">{{braceletColor.name}}</option>
      </select>

      <label for="clasp-material">Clasp Material</label>
      <select id="clasp-material" v-model.trim="$v.claspMaterial.$model">
        <option value="">Please select</option>
        <option v-for="claspMaterial in watchCreateFormData.claspMaterials" :key="claspMaterial.id" :value="claspMaterial.id">{{claspMaterial.name}}</option>
      </select>

      <label for="clasp">Clasp</label>
      <select id="clasp" v-model.trim="$v.clasp.$model">
        <option value="">Please select</option>
        <option v-for="clasp in watchCreateFormData.clasps" :key="clasp.id" :value="clasp.id">{{clasp.name}}</option>
      </select>


      <h3>Case</h3>
      <label for="bezel-material">Bezel Material</label>
      <select id="bezel-material" v-model.trim="$v.bezelMaterial.$model">
        <option value="">Please select</option>
        <option v-for="bezelMaterial in watchCreateFormData.bezelMaterials" :key="bezelMaterial.id" :value="bezelMaterial.id">{{bezelMaterial.name}}</option>
      </select>

      <label for="thickness">Thickness</label>
      <input type="text" id="thickness" v-model.trim="$v.thickness.$model" class="form-control" placeholder="Enter ...">

      <label for="glass">Glass</label>
      <select id="glass" v-model.trim="$v.glass.$model">
        <option value="">Please select</option>
        <option v-for="glass in watchCreateFormData.glass" :key="glass.id" :value="glass.id">{{glass.name}}</option>
      </select>

      <label for="water-resistance">Water Resistance</label>
      <select id="water-resistance" v-model.trim="$v.waterResistance.$model">
        <option value="">Please select</option>
        <option v-for="waterResistance in watchCreateFormData.waterResistance" :key="waterResistance.id" :value="waterResistance.id">{{waterResistance.name}}</option>
      </select>

      <label for="dial">Dial</label>
      <select id="dial" v-model.trim="$v.dial.$model">
        <option value="">Please select</option>
        <option v-for="dial in watchCreateFormData.dial" :key="dial.id" :value="dial.id">{{dial.name}}</option>
      </select>

      <label for="dial-numerals">Dial Numerals</label>
      <select id="dial-numerals" v-model.trim="$v.dialNumeral.$model">
        <option value="">Please select</option>
        <option v-for="dialNumeral in watchCreateFormData.dialNumerals" :key="dialNumeral.id" :value="dialNumeral.id">{{dialNumeral.name}}</option>
      </select>

      <h3>Caliber</h3>

      <label for="caliber">Movement/Caliber</label>
      <input type="text" id="caliber" v-model.trim="$v.caliber.$model" class="form-control" placeholder="Enter ...">

      <label for="base-caliber">Base caliber</label>
      <input type="text" id="base-caliber" v-model.trim="$v.baseCaliber.$model" class="form-control" placeholder="Enter ...">

      <label for="power-reserve">Power reserve</label>
      <input type="text" id="power-reserve" v-model.trim="$v.powerReserve.$model" class="form-control" placeholder="Enter ...">

      <label for="number-of-jewels">Number of jewels</label>
      <input type="text" id="number-of-jewels" v-model.trim="$v.numberOfJewels.$model" class="form-control" placeholder="Enter ...">

      <label for="frequency">Frequency</label>
      <input type="text" id="frequency" v-model.trim="$v.frequency.$model" class="form-control" placeholder="Enter ...">


      <h3>Watch Functions</h3>
      <div v-for="watchFunction in watchCreateFormData.watchFunctions" :key="watchFunction.id"  class="checkbox">
          <label>
          <input :value="watchFunction.id" type="checkbox" v-model.trim="$v.watchFunctions.$model" >
          {{watchFunction.name}}
          </label>
      </div>
      <h3>Watch Characteristics</h3>
      <div v-for="watchCharacteristic in watchCreateFormData.watchCharacteristics"  class="checkbox">
        <label>
          <input :value="watchCharacteristic.id" type="checkbox" v-model.trim="$v.watchCharacteristics.$model" >
          {{watchCharacteristic.name}}
        </label>
      </div>

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
      name: "WatchCreate",
      data(){
        return {
          brand: '',
          model: '',
          referenceNumber: '',
          gender: '',
          movement: '',
          caseMaterial: '',
          braceletMaterial: '',
          caseDiameter: '',
          braceletColor: '',
          claspMaterial: '',
          clasp: '',
          bezelMaterial: '',
          thickness: '',
          glass: '',
          waterResistance: '',
          dial: '',
          dialNumeral: '',
          caliber: '',
          baseCaliber: '',
          powerReserve: '',
          numberOfJewels: '',
          frequency: '',
          watchFunctions: [],
          watchCharacteristics: [],
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
        gender: {},
        movement: {},
        caseMaterial: {},
        braceletMaterial: {},
        caseDiameter: {},
        braceletColor: {},
        claspMaterial: {},
        clasp: {},
        bezelMaterial: {},
        thickness: {},
        waterResistance: {},
        dial: {},
        dialNumeral: {},
        glass: {},
        caliber: {},
        baseCaliber: {},
        powerReserve: {},
        numberOfJewels: {},
        frequency: {},
        watchFunctions: {},
        watchCharacteristics: {}
      },
      computed: {
        ...mapGetters('authenticationServices', ['isAuthenticated']),
        ...mapGetters('watchServices', ['watchCreateFormData']),
      },
      methods: {
        ...mapActions('watchServices', ['getCreateWatchFormData', 'addWatchAction']),

        addWatch(){
          this.$v.$touch();

          if (this.$v.$invalid) {
            this.submitStatus = 'ERROR';
            this.isHidden = true;
          }
          else {
            let params = {
              'brand': this.brand,
              'model': this.model,
              'referenceNumber': this.referenceNumber,
              'gender': this.gender,
              'movement': this.movement,
              'caseMaterial': this.caseMaterial,
              'braceletMaterial': this.braceletMaterial,
              'caseDiameter': this.caseDiameter,
              'braceletColor': this.braceletColor,
              'claspMaterial': this.claspMaterial,
              'clasp': this.clasp,
              'bezelMaterial': this.bezelMaterial,
              'thickness': this.thickness,
              'glass': this.glass,
              'waterResistance': this.waterResistance,
              'dial': this.dial,
              'dialNumeral': this.dialNumeral,
              'caliber': this.caliber,
              'baseCaliber': this.baseCaliber,
              'powerReserve': this.powerReserve,
              'numberOfJewels': this.numberOfJewels,
              'frequency': this.frequency,
              'watchFunctions': this.watchFunctions,
              'watchCharacteristics': this.watchCharacteristics
            };
            this.addWatchAction(params);
            this.submitStatus = '';
            this.isHidden = true;
          }
        }
      },
      created() {
        if (!this.isAuthenticated) {
          this.$router.push('/login');
        }

        this.getCreateWatchFormData();
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

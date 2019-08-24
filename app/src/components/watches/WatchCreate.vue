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
      <input type="text" id="reference-number" v-model.trim="$v.referenceNumber.$model"  name="reference-number" class="form-control" placeholder="Enter ...">
      <input type="submit" value="Submit">

      <p class="typo__p" v-if="submitStatus === 'ERROR'">Please fill the form correctly.</p>
    </form>


              <!--<h3>Enter the most important details</h3>-->
              <!--<div>-->
                <!--<div class="form-group">-->
                  <!--<label>Gender</label>-->
                  <!--<select name="gender" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="gender in watchCreateFormData.genders" :key="gender.id"  :value="gender.id">{{gender.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Movement</label>-->
                  <!--<select name="movement" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="movement in watchCreateFormData.movements" :key="movement.id" :value="movement.id">{{movement.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Case Material</label>-->
                  <!--<select class="form-control select2" name="case_material" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="caseMaterial in watchCreateFormData.caseMaterials" :key="caseMaterial.id"  :value="caseMaterial.id">{{caseMaterial.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Bracelet Material</label>-->
                  <!--<select class="form-control select2" name="bracelet_material" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="braceletMaterial in watchCreateFormData.braceletMaterials" :key="braceletMaterial.id" :value="braceletMaterial.id">{{braceletMaterial.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Case diameter</label>-->
                  <!--<div class="input-group">-->
                    <!--<input name="case_diameter" placeholder="Enter ..." id="caseDiameterX" type="number" class="form-control"><span class="input-group-addon">mm</span>-->
                  <!--</div>-->
                <!--</div>-->
              <!--</div>-->
              <!--<h3>Bracelet/strap</h3>-->
              <!--<div>-->
                <!--<div class="form-group">-->
                  <!--<label>Bracelet Color</label>-->
                  <!--<select name="bracelet_color" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="braceletColor in watchCreateFormData.braceletColors" :key="braceletColor.id" :value="braceletColor.id">{{braceletColor.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Clasp Material</label>-->
                  <!--<select name="calsp_material" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                      <!--<option v-for="claspMaterial in watchCreateFormData.claspMaterials" :key="claspMaterial.id" :value="claspMaterial.id">{{claspMaterial.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Clasp</label>-->
                  <!--<select name="clasp" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="clasp in watchCreateFormData.clasps" :key="clasp.id" :value="clasp.id">{{clasp.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->

              <!--</div>-->
              <!--<h3>Case</h3>-->
              <!--<div>-->

                <!--<div class="form-group">-->
                  <!--<label>Bezel Material</label>-->
                  <!--<select name="bazel_material" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="bezelMaterial in watchCreateFormData.bezelMaterials" :key="bezelMaterial.id" :value="bezelMaterial.id">{{bezelMaterial.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Thickness</label>-->
                  <!--<div class="input-group">-->
                    <!--<input name="thickness" placeholder="Enter ..." id="caseDiameterX" type="number" class="form-control"><span class="input-group-addon">mm</span>-->
                  <!--</div>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Glass</label>-->
                  <!--<select name="glass" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="glass in watchCreateFormData.glass" :key="glass.id" :value="glass.id">{{glass.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Water Resistance</label>-->
                  <!--<select name="water_resistance" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="waterResistance in watchCreateFormData.waterResistance" :key="waterResistance.id" :value="waterResistance.id">{{waterResistance.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Dial</label>-->
                  <!--<select name="dial" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="dial in watchCreateFormData.dial" :key="dial.id" :value="dial.id">{{dial.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Dial Numerals</label>-->
                  <!--<select name="dial_numerals" class="form-control select2" style="width: 100%;">-->
                    <!--<option value="">Please select</option>-->
                    <!--<option v-for="dialNumeral in watchCreateFormData.dialNumerals" :key="dialNumeral.id" :value="dialNumeral.id">{{dialNumeral.name}}</option>-->
                  <!--</select>-->
                <!--</div>-->
              <!--</div>-->
              <!--<h3>Caliber</h3>-->
              <!--<div>-->
                <!--<div class="form-group">-->
                  <!--<label>Movement/Caliber</label>-->
                  <!--<input name="caliber" type="text" class="form-control" placeholder="Enter ...">-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Base caliber</label>-->
                  <!--<input name="base_caliber" type="text" class="form-control" placeholder="Enter ...">-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Power reserve</label>-->
                  <!--<div class="input-group">-->
                    <!--<input name="power_reserve" placeholder="Enter ..." id="caseDiameterX" type="number" class="form-control"><span class="input-group-addon">h</span>-->
                  <!--</div>-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Number of jewels</label>-->
                  <!--<input type="number" name="number_of_jewels" class="form-control" placeholder="Enter ...">-->
                <!--</div>-->
                <!--<div class="form-group">-->
                  <!--<label>Frequency</label>-->
                  <!--<div class="input-group">-->
                    <!--<input name="frequency" placeholder="Enter ..." id="caseDiameterX" type="number" class="form-control"><span class="input-group-addon">A/h</span>-->
                  <!--</div>-->
                <!--</div>-->
              <!--</div>-->


              <!--<h3>Functions</h3>-->
              <!--<div>-->
                <!--<div class="form-group" style="display: flex; flex-wrap: wrap; justify-content: space-around">-->
                  <!--<div>-->
                    <!--<div v-for="watchFunction in watchCreateFormData.watchFunctions" :key="watchFunction.id" v-if="watchFunction.isEven" class="checkbox">-->
                      <!--<label>-->
                        <!--<input :value="watchFunction.id" type="checkbox" name="watch_functions[]">-->
                        <!--{{watchFunction.name}}-->
                      <!--</label>-->
                    <!--</div>-->
                  <!--</div>-->
                  <!--<div>-->
                    <!--<div v-for="watchFunction in watchCreateFormData.watchFunctions" :key="watchFunction.id" v-if="!watchFunction.isEven" class="checkbox">-->
                      <!--<label>-->
                        <!--<input :value="watchFunction.id" type="checkbox" name="watch_functions[]">-->
                        <!--{{watchFunction.name}}-->
                      <!--</label>-->
                    <!--</div>-->
                  <!--</div>-->
                <!--</div>-->
              <!--</div>-->
              <!--<h3>Others</h3>-->
              <!--<div>-->
                <!--<div class="form-group" style="display: flex; flex-wrap: wrap; justify-content: space-around">-->
                  <!--<div>-->
                    <!--<div v-for="watchCharacteristic in watchCreateFormData.watchCharacteristics" :key="watchCharacteristic.id" v-if="watchCharacteristic.isEven" class="checkbox">-->
                      <!--<label>-->
                        <!--<input :value="watchCharacteristic.id" type="checkbox" name="watch_characteristics[]">-->
                        <!--{{watchCharacteristic.name}}-->
                      <!--</label>-->
                    <!--</div>-->
                  <!--</div>-->
                  <!--<div>-->
                    <!--<div v-for="watchCharacteristic in watchCreateFormData.watchCharacteristics" :key="watchCharacteristic.id" v-if="!watchCharacteristic.isEven" class="checkbox">-->
                      <!--<label>-->
                        <!--<input :value="watchCharacteristic.id" type="checkbox" name="watch_characteristics[]">-->
                        <!--{{watchCharacteristic.name}}-->
                      <!--</label>-->
                    <!--</div>-->
                  <!--</div>-->
                <!--</div>-->
              <!--</div>-->
            <!--</div>-->
            <!--<div class="box-footer" style="display: flex; justify-content: flex-start">-->
              <!--<a href="" class="btn btn-default">Cancel</a>-->
              <!--<button type="submit" class="btn btn-primary">Save</button>-->
            <!--</div>-->
          <!--</form>-->
        <!--</div>-->
      <!--</div>-->
    <!--</div>-->
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

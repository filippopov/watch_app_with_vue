<template>
  <div>
    <form @submit.prevent="onRegister">
      <fieldset>
        <legend>Register</legend>

        <p class="field">
          <label for="email">Email</label>
          <span class="input">
          <input type="text" v-model.trim="$v.email.$model" name="email" id="email">
          <span class="actions"></span>
          <i class="fas fa-user"></i>
        </span>
        </p>

        <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.email.required">Email is required.</p>
        <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.email.email">Please enter valid email.</p>

        <p class="field">
          <label for="password">Password</label>
          <span class="input">
          <input type="password" v-model.trim="$v.password.$model" name="password" id="password">
          <span class="actions"></span>
          <i class="fas fa-key"></i>
        </span>
        </p>
        <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.password.required">Password is required.</p>
        <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.password.minLength">Password must have at least {{ $v.password.$params.minLength.min }} letters.</p>

        <p class="field">
          <label for="repeat-password">Repeat Password</label>
          <span class="input">
          <input type="password" v-model.trim="$v.repeatPassword.$model" name="repeat-password" id="repeat-password">
          <span class="actions"></span>
          <i class="fas fa-key"></i>
        </span>
        </p>
        <p v-bind:class="['error', {show: isHidden}]" v-if="!$v.repeatPassword.sameAsPassword">Passwords must be identical.</p>
        <input type="submit" value="Register" />
        <p class="typo__p" v-if="submitStatus === 'ERROR'">Please fill the form correctly.</p>
        <p v-bind:class="['error', {show: isHidden}]">{{getMessage}}</p>
      </fieldset>
    </form>
    <template v-if="isAuthenticated">Hi</template>
  </div>

</template>

<script>
    import {
      required,
      minLength,
      maxLength,
      email,
      sameAs
    } from 'vuelidate/lib/validators'
    import {mapState, mapGetters, mapMutations, mapActions} from 'vuex'

    export default {
      name: "Register",
      data(){
        return {
          email: '',
          password: '',
          repeatPassword: '',
          submitStatus: null,
          isHidden: false
        }
      },
      computed: {
        ...mapGetters('authenticationServices', ['getMessage', 'getUser', 'getResult', 'isAuthenticated']),
      },
      validations: {
        password: {
          required,
          minLength: minLength(6),
        },
        repeatPassword: {
          sameAsPassword: sameAs('password')
        },
        email: {
          email,
          required
        }
      },
      methods: {
        ...mapActions('authenticationServices', ['registerUser']),
        onRegister() {

          this.$v.$touch();

          if (this.$v.$invalid) {
            this.submitStatus = 'ERROR';
            this.isHidden = true;
          } else {
            let params = {
              'email': this.email,
              'password': this.password,
              'repeatPassword': this.repeatPassword
            };

            this.registerUser(params);
            this.$forceUpdate();
            this.submitStatus = '';
            this.isHidden = true;
          }
        }
      }
    }
</script>

<style scoped>
  form {
    padding-top: 5rem;
  }

  fieldset, legend {
    border: 1px solid black;
    background: #FFF;
  }

  fieldset {
    position: relative;
    padding: 2rem;
  }

  fieldset legend {
    display: block;
    position: absolute;
    border-radius: 0.2rem;
    padding: 0.3rem 1.2rem;
    top: -1.5rem; left: -1px;
  }

  form label {
    display: block;
  }

  .field {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
  }

  .field > label {
    flex: 0 0 6rem;
    text-align: right;
    padding-right: 0.5rem;
  }

  .input {
    flex: 1 0 auto;
    display: flex;
    position: relative;
    align-items: center;
  }

  .input input {
    order: 1;
    border: none;
    padding: 0.3rem 0.6rem;
    position: relative;
    z-index: 3;
    background: none;
    outline: none;
    flex: 1 0 auto;
  }

  .input .fas {
    order: 0;
    position: relative;
    z-index: 2;
    line-height: 1;
    padding: 0.2rem 0.5rem 0.2rem 0.7rem;
    font-size: 0.8rem;
  }

  .input .actions {
    background: #FFF;
    border: 1px solid #CCC;
    position: absolute;
    top: 0; left: 0; right: 0; bottom: 0;
    border-radius: 0.3rem;
    z-index: 1;
  }

  .input input:focus + .actions {
    border-color: #090;
  }

  .input input:focus + .actions + .fas {
    color: #090;
  }

  input[type=submit] {
    border: 1px solid black;
    background: #060;
    color: #FFF;
    padding: 0.5rem 1rem;
    border-radius: 0.3rem;
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

  @media screen and (max-width: 800px) {
    .field {
      display: block;
    }

    .field > label {
      width: auto;
      text-align: left;
    }
  }
</style>

<template>
  <div>
    <v-main>
      <p class="display-3 font-weight-light	text-center pa-4">Connectez vous</p>
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <v-card
              class="mx-auto"
              max-width="400"
              outlined
              tile
            >
              <v-img
                class="white--text align-end"
                height="400px"
                :src="require('../assets/img/home/slider2.png')"
              >
                <v-card-title>Top 10 Fashion of the Week</v-card-title>
              </v-img>
            </v-card>
          </div>
          <div class="col-md-8 col-sm-8 col-xs-12">
            <div class="auth-wrapper auth-v1" >
              <div class="auth-inner">
                <v-card class="auth-card">
                  <!-- login form -->
                  <v-card-text>
                    <v-form>
                      <v-text-field
                        v-model="email"
                        outlined
                        label="Email"
                        placeholder="Email"
                        hide-details
                        class="mb-3"
                      ></v-text-field>

                      <v-text-field
                        v-model="password"
                        outlined
                        label="Mot de passe"
                        placeholder="············"
                        hide-details
                      ></v-text-field>

                      <div class="d-flex align-center justify-space-between flex-wrap">
                        <v-checkbox
                          label="Se souvenir de moi"
                          hide-details
                          class="me-3 mt-1"
                        >
                        </v-checkbox>

                        <!-- forgot link -->
                        <a
                          href="javascript:void(0)"
                          class="mt-1"
                        >
                          Mot de passe oublié ?
                        </a>
                      </div>

                      <v-btn
                        block
                        color="primary"
                        class="mt-6"
                        @click="submit()"
                      >
                        SE CONNECTER
                      </v-btn>
                    </v-form>
                  </v-card-text>

                  <!-- create new account  -->
                  <v-card-text class="d-flex align-center justify-center flex-wrap mt-2">
                    <span class="me-2">
                      Nouveau sur notre plateforme ?
                    </span>
                    <!-- <router-link :to="{name:'pages-register'}"> -->
                      Créer un compte
                    <!-- </router-link> -->
                  </v-card-text>

                  <!-- divider -->
                  <v-card-text class="d-flex align-center mt-2">
                    <v-divider></v-divider>
                    <span class="mx-5">or</span>
                    <v-divider></v-divider>
                  </v-card-text>

                  <!-- social links -->
                  <v-card-actions class="d-flex justify-center">
                    <!-- <v-btn
                      v-for="link in socialLink"
                      :key="link.icon"
                      icon
                      class="ms-1"
                    >
                      <v-icon :color="$vuetify.theme.dark ? link.colorInDark : link.color">
                        {{ link.icon }}
                      </v-icon>
                    </v-btn> -->
                  </v-card-actions>
                </v-card>
              </div>

              <!-- background triangle shape  -->
              <!-- <img
                class="auth-mask-bg"
                height="173"
                :src="require(`@/assets/images/misc/mask-${$vuetify.theme.dark ? 'dark':'light'}.png`)"
              >

              <v-img
                class="auth-tree"
                width="247"
                height="185"
                src="@/assets/images/misc/tree.png"
              ></v-img>

              <v-img
                class="auth-tree-3"
                width="377"
                height="289"
                src="@/assets/images/misc/tree-3.png"
              ></v-img> -->
            </div>
          </div>
        </div>
    </v-main>
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";


export default {

  data () {
    return {
      email: "",
      password: "",
    }
  },

  watch: {
    MSG_AUTH_SUCESS_CLIENT() {
      console.log('le guetter marche bien');
      // if (this.MSG_SUCCESS_CLIENT === "User registered successfully!") {
        this.$router.push({ name:'Home' });
        this.showSuccess()

      // }
    }
  },

  computed: {
      ...mapGetters(["MSG_AUTH_SUCESS_CLIENT"]),
    },

  methods: {
    ...mapActions(["AUTH_CLIENT"]),

    submit() {
        let User = {
          email: this.email,
          password: this.password,
        };
        console.log(User);
        this.AUTH_CLIENT(User);
        },
      },
      showSuccess() {
            this.$toast.add({severity:'success', summary: 'Success Message', detail:"Bienvenu à vous", life: 3000});
        },
  }
</script>

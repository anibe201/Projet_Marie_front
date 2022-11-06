<template>
  <div>
    <v-main>
      <p class="display-3 font-weight-light	text-center pa-4">Veuillez vous inscrire</p>
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
          <div class="col-md-7 col-sm-8 col-xs-12">
            <!-- <div class="card">
              <div class="field">
                <h5>Prenom</h5>
                <InputText type="text" v-model="firstName" />
                <h5>Nom</h5>
                <InputText type="text" v-model="lastName" />
                <h5>Email</h5>
                <InputText type="text" v-model="email" />
                <h5>Mot de passe</h5>
                <InputText type="text" v-model="password" />
                <h5>Confirme MDP</h5>
                <InputText type="text" v-model="confirm_mdp" />
              </div>
              <Button label="Submit" style="margin: 30px;" @click="submit()"/>
            </div> -->


            <div class="auth-wrapper auth-v1">
              <div class="auth-inner">
                <v-card class="auth-card">
                  <!-- logo -->
                  <!-- <v-card-title class="d-flex align-center justify-center py-7">
                    <router-link
                      to="/"
                      class="d-flex align-center"
                    >
                      <v-img
                        :src="require('@/assets/images/logos/logo.png')"
                        max-height="30px"
                        max-width="30px"
                        alt="logo"
                        contain
                        class="me-3 "
                      ></v-img> -->
<!--
                      <h2 class="text-2xl font-weight-semibold">
                        ZOROBY.COM
                      </h2>
                    </router-link>
                  </v-card-title> -->

                  <!-- title -->
                  <v-card-text>
                    <!-- <p class="text-2xl font-weight-semibold text--primary mb-2 text-center">
          Pas encore membre ?
                    </p> -->
                    <!-- <p class="mb-2 text-center">
                      Inscrivez-vous gratuitement !
                    </p> -->
<!--
                    <vs-button id="shoow" dark flat @click="active=true" :hidden="true">
                      Open Alert 10s
                    </vs-button>
                    <vs-alert danger :progress="progress" v-model="active">
                      <template #title>
                        Erreur :
                      </template>
                      Remplisser correctement tous les champs
                    </vs-alert>
                    <vs-button id="shoow2" dark flat @click="active2=true" :hidden="true">
                      Open Alert 10s
                    </vs-button>
                    <vs-alert danger :progress="progress2" v-model="active2">
                      <template #title>
                        Erreur :
                      </template>
                      Il semble que <strong>l'adress mail</strong> sois déja utilisé
                    </vs-alert> -->


                  </v-card-text>

                  <!-- login form -->
                  <v-card-text>
                    <v-form>
                      <v-text-field
                        v-model="firstName"
                        outlined
                        label="Nom"
                        placeholder="Vianney"
                        hide-details
                        class="mb-3"
                      ></v-text-field>

                      <v-text-field
                      v-model="lastName"
                      outlined
                      label="Prenom"
                      placeholder=""
                      hide-details
                      class="mb-3"
                    ></v-text-field>

                      <v-text-field
                        v-model="email"
                        outlined
                        label="Email"
                        placeholder="anibe201@gmail.com"
                        hide-details
                        class="mb-3"
                      ></v-text-field>

                      <v-text-field
                        v-model="password"
                        outlined
                        label="Mot de passe"
                        placeholder=""
                        hide-details
                      ></v-text-field>
                      <!-- <v-col
                      cols="12"
                      md="6"
                    >
                      <v-radio-group
                        row
                        class="mt-0"
                        hide-details
                      >
                        <v-radio
                          value="male"
                          label="Homme"
                        >
                        </v-radio>
                        <v-radio
                          value="female"
                          label="Femme"
                        >
                        </v-radio>
                      </v-radio-group>
                    </v-col> -->
                    <v-spacer></v-spacer>
                    <v-spacer></v-spacer>
                      <!-- <v-checkbox
                        hide-details
                        class="mt-1"
                      > -->
                        <template #label>
                          <div class="d-flex align-center flex-wrap">
                            <!-- <span class="me-2">J'accepte les</span><a href="javascript:void(0)">privacy policy &amp; terms</a> -->
                          </div>
                        </template>
                      <!-- </v-checkbox> -->

                      <v-btn
                        block
                        color="primary"
                        class="mt-6"
                        @click="submit()"
                      >
                        S'inscrire
                      </v-btn>
                    </v-form>
                  </v-card-text>

                  <!-- create new account  -->
                  <!-- <v-card-text class="d-flex align-center justify-center flex-wrap mt-2">
                    <span class="me-2">
                      Vous avez deja un compte ?
                    </span> -->
                    <!-- <router-link :to="{ name:'pages-login' }">
                      connectez-vous ici
                    </router-link> -->
                  <!-- </v-card-text> -->

                  <!-- divider -->
                  <!-- <v-card-text class="d-flex align-center mt-2">
                    <v-divider></v-divider>
                    <span class="mx-5">ou</span>
                    <v-divider></v-divider>
                  </v-card-text> -->

                  <!-- social link -->
                  <v-card-actions class="d-flex justify-center">
                    <!-- <v-btn
                      v-for="link in socialLink"
                      :key="link.icon"
                      icon
                      class="ms-1"
                    >
                      <v-icon :color="$vuetify.theme.dark ? link.colorInDark:link.color">
                        {{ link.icon }}
                      </v-icon>
                    </v-btn>-->
                  </v-card-actions>
                </v-card>
              </div>

              <!-- background triangle shape  -->
              <!-- <img
                class="auth-mask-bg"
                height="190"
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
          <div class="col-md-1 col-sm-1 col-xs-12">
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
              </v-img>

            </v-card>
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
      active: false,
      firstName: '',
          lastName: '',
          email: '',
          password: '',
          confirm_mdp: ''
  }
  },

  watch: {
    MSG_SUCCESS_CLIENT() {
      console.log('le guetter marche bien');
      this.$router.push({ name:'ConfirmRegister' });
      this.showSuccess()
    }
  },

  computed: {
      ...mapGetters(["MSG_SUCCESS_CLIENT"]),
    },

  methods: {
    ...mapActions(["ADD_CLIENT"]),

    submit() {
        let User = {
          firstName: this.firstName,
          lastName: this.lastName,
          email: this.email,
          password: this.password,
          // confirm_mdp: this.confirm_mdp,
        };
        console.log(User);
        this.ADD_CLIENT(User);
        },

        showSuccess() {
            this.$toast.add({severity:'success', summary: 'Success Message', detail:'Entrez le code de validation', life: 3000});
        },
      },
  }
</script>

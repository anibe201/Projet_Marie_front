<template>
  <div>
    <v-main>
      <p class="display-3 font-weight-light	text-center pa-4">Veuillez confirmer votre inscription</p>
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
            <div class="auth-wrapper auth-v1">
              <div class="auth-inner">
                <v-card class="auth-card">
                  <v-card-text>
                  </v-card-text>
                  <v-card-text>
                    <v-form>
                      <v-text-field
                        v-model="token"
                        outlined
                        label="Code de confirmation"
                        placeholder=""
                        hide-details
                        class="mb-3"
                      ></v-text-field>
                    <v-spacer></v-spacer>
                    <v-spacer></v-spacer>
                      <v-checkbox
                        hide-details
                        class="mt-1"
                      >
                        <template #label>
                          <div class="d-flex align-center flex-wrap">
                            <span class="me-2">J'accepte les</span><a href="javascript:void(0)">privacy policy &amp; terms</a>
                          </div>
                        </template>
                      </v-checkbox>

                      <v-btn
                        block
                        color="primary"
                        class="mt-6"
                        @click="submit()"
                      >
                    Confirmer
                      </v-btn>
                    </v-form>
                  </v-card-text>
                  <v-card-actions class="d-flex justify-center">
                  </v-card-actions>
                </v-card>
              </div>
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
          token: '',
          userID: '',
        }
  },

  watch: {
    MSG_AUTH_CONFIRM_CLIENT() {
      console.log('le guetter marche bien');
        this.$router.push({ name:'Home' });
        this.showSuccess()
    }
  },

created() {
  const userdetails = JSON.parse(localStorage.getItem("user"));
  console.log(userdetails);
  this.userID = userdetails.userId;
  console.log(this.userID);
},

  computed: {
      ...mapGetters(["MSG_AUTH_CONFIRM_CLIENT"]),
    },

  methods: {
    ...mapActions(["CONFIRM_CLIENT"]),

    submit() {
        let ConfirmUser = {
          registerToken: this.token,
          userId: this.userID,
        };
        console.log(ConfirmUser);
        this.CONFIRM_CLIENT(ConfirmUser);
        },
    showSuccess() {
            this.$toast.add({severity:'success', summary: 'Success Message', detail:'Votre inscription a bien été effectué', life: 3000});
        },
      },
  }
</script>

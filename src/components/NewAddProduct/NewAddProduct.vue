<template>
  <div>
    <v-container>
      <v-row no-gutters>
        <v-col :cols="12">
          <v-card-text
            class=""
            tile
            outlined
          >
            <v-card-title class="subheading ">Nouvel ajout</v-card-title>
            <v-divider></v-divider>
            <div class="row">
              <div class="col-12 col-md-3 col-sm-6 col-xs-6 text-center" v-for="produit in ListNewAdd" :key="produit.id">
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                    :src="require('../../assets/img/home/deal1.jpg')"
                  >
                    <v-card-title>Bags & Purses </v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>Upto 60% + Extra 10%</div>
                    <div>Baggit, Zara, Fossil</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn
                      class="ma-2"
                      outlined
                      color="info"
                      @click="redirection(produit.id)"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
          </div>
          </v-card-text>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";


  export default {
    data: () => ({
      ListNewAdd: [],
    }),

    watch: {
      listeNewAddProduits() {
      if(this.listeNewAddProduits) {
        console.log('le guetter marche bien');
        this.ListNewAdd = this.listeNewAddProduits
        console.log(this.listeNewAddProduits);
      }
    }
  },

  created() {
    this.GET_NEW_ADD_PRODUIT();

  },

  computed: {
      ...mapGetters(["listeNewAddProduits"]),
    },

  methods: {
    ...mapActions(["GET_NEW_ADD_PRODUIT"]),

        showSuccess() {
            this.$toast.add({severity:'success', summary: 'Success Message', detail:'Entrez le code de validation', life: 3000});
        },
        redirection(produit) {
          const path = `/product/` + produit;
          if (this.$route.path !== path)
          this.$router.push({ path, params: { id: produit } });
        },
      },
  }
</script>


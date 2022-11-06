<template>
  <div>
    <v-card-text
    class="pa-0 pt-4"
    tile
    outlined
  >
    <p class="subtitle-1 font-weight-light pt-3 text-center">LES PLUS VENDU</p>
    <v-divider></v-divider>
    <div class="row text-center">
      <div class="col-md-2 col-sm-4 col-xs-12 text-center" v-for="produit in ListTopSell" :key="produit.id">
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
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";


  export default {
    data: () => ({
      ListTopSell: [],
    }),

    watch: {
      listeTopSellProduits() {
      if(this.listeTopSellProduits) {
        console.log('le guetter marche bien');
        this.ListTopSell = this.listeTopSellProduits
        console.log(this.listeTopSellProduits);
      }
    }
  },

  created() {
    this.GET_TOP_SELL_PRODUIT();

  },

  computed: {
      ...mapGetters(["listeTopSellProduits"]),
    },

  methods: {
    ...mapActions(["GET_TOP_SELL_PRODUIT"]),

        showSuccess() {
            this.$toast.add({severity:'success', summary: 'Success Message', detail:'Entrez le code de validation', life: 3000});
        },
        redirection(produit) {
          const path = `/product/` + produit;

          if (this.$route.path !== path)
          this.$router.push({ path, params: { id: produit } });
          location.reload()
        },
      },
  }
</script>


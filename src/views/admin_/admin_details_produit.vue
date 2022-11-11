<template>
   <div class="dashboard">
    <v-subheader class="d-flex justify-space-between align-center">
            <h3>Details du produit {{ affiche.produit.id }}</h3>
            <v-btn color="success" class="rouded-lg">
                View Orders
            </v-btn>
    </v-subheader>
   </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";

export default {

  data() {
    return {
      affiche: "",
      // id: "",
    };
  },
  components: {
  },

  watch: {
    produit() {
      console.log(this.produit.produit);
      if (this.produit) {
        this.affiche = this.produit;
      }
    },
  },
  computed: {
    ...mapGetters(["produit"]),
  },
  mounted() {

    this.getProduit(this.$route.params.id);
  },

  methods: {
    ...mapActions(["getProduit"]),
    joinPhone() {
      let phone = this.produit.produit.utilisateur.contact;
      let link = "tel:" + phone;
      window.location.href = link;
    },
    joinMail() {
      let mail = this.produit.produit.utilisateur.email;
      let link = "mailto:" + mail;
      window.location.href = link;
    },
  },
};
</script>
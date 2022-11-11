<template>
   <div class="dashboard">
    <v-subheader class="d-flex justify-space-between align-center">
            <h3>Commandes</h3>
            <v-btn color="success" class="rouded-lg">
                View Orders
            </v-btn>
    </v-subheader>
   </div>
</template>

<script>
  import { mapActions, mapGetters } from "vuex";

  export default {
    name: "commande",
    // props: [""],
    components: {},
    data() {
      return {
        id_pro: '',
	      liste_commande_length: "",
        liste_commande_user: [],
        affiche: "",
        quantié_achat: "",
        unite_mesure: "",
        id_to_send: "",
        id_user: "",
        verif: false,
        id_commande: "",
      };
    },

  //   watch: {
  //     COMMANDE_LIST() {
  //       if (this.COMMANDE_LIST) {
  //         console.log(this.COMMANDE_LIST);
  //         console.log(this.COMMANDE_LIST.original.object);
  //         this.liste_commande_length = this.COMMANDE_LIST.original.object.length;

  //         this.liste_commande_user = this.COMMANDE_LIST.original.object.slice(0, 10);
  //       }
  //     },
  //     COMMANDE_UPDATE() {
  //       if(this.COMMANDE_UPDATE === "Modification de la commande effectuée avec succès.") {
  //         this.GET_USER_COMMANDE()
  //       }
  //     },
  //   },
  //   computed: {
  //     ...mapGetters(["produit", "COMMANDE", "COMMANDE_LIST", "COMMANDE_UPDATE"]),
  //   },

  //   created() {
  //     const userdetails = JSON.parse(localStorage.getItem("user"));
  //     if (userdetails !== null) {
  //       this.id_user = userdetails.user_id
  //     } else {
  //       this.verif = true;
  //     }
  //   },

  //   mounted() {
  //     this.GET_USER_COMMANDE();
  //   },

  //   methods: {
  //     ...mapActions(["getProduit", "GET_USER_COMMANDE"]),
  //     onPage(event) {
  //       this.liste_commande_user = this.COMMANDE_LIST.original.object.slice(
  //         event.first,
  //         event.first + 10
  //       );
  //     },
  //     confirm2() {
  //       this.$confirm.require({
  //         message: 'Voulez-vous vraiment supprimé cette publication ?',
  //         header: 'Suppression',
  //         icon: 'pi pi-info-circle',
  //         acceptClass: 'p-button-danger',
  //         accept: () => {
  //           this.$toast.add({severity:'error', detail:'Suppression réussi', life: 3000});
  //         },
  //         reject: () => {

  //         }
  //       });
  //     },
  //     async redirection_update_commande(produit) {
  //       console.log(produit);
  //       const path = `/detail_commandes/` + produit;
  //       console.log(this.id_pro);
  //        if (this.$route.path !== path)
  //         await this.$router.push({ path, params: { id: this.id_pro } });
  //         console.log(this.id_pro);
  //   },
  //   select(id_produit) {
  //       console.log('le select id')
  //       console.log(id_produit);
  //       this.id_pro = id_produit;
  //   },
  // }
  };
</script>

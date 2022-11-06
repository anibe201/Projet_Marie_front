<template>
    <div class="dashboard">
     <v-subheader class="d-flex justify-space-between align-center">
             <h3>modification de la commande N°{{ id_commande }}</h3>
             <v-btn color="success" class="rouded-lg">

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
       id_commande: null,
       id_produit: null,
       quantite_achat: '',
       liste_commande_temp: "",
        liste_commande: [],
        quantie_achats: [],
     };
   },
   components: {
   },

  //  watch: {
  //    produit() {
  //      console.log(this.produit.produit);
  //      if (this.produit) {
  //        this.affiche = this.produit;
  //      }
  //    },
  //    COMMANDE_LIST() {
  //       if (this.COMMANDE_LIST) {
  //         console.log(this.COMMANDE_LIST);
  //         console.log(this.COMMANDE_LIST.original.object);
  //         this.liste_commande = this.COMMANDE_LIST.original.object;
  //         this.liste_commande_temp = this.liste_commande.filter(element => element.id == this.id_commande)
  //         console.log(this.liste_commande_temp);
  //         this.quantite_achat = this.liste_commande_temp.quantite_acheter;
  //         console.log(this.liste_commande_temp.quantite_acheter);
  //       }
  //     },
  //  },

  //  created() {
  //   this.id_commande = this.$route.params.id
  //   this.GET_USER_COMMANDE();
  //   },

  //  computed: {
  //    ...mapGetters(["produit", "COMMANDE_UPDATE", "COMMANDE_LIST"]),
  //  },
  //  mounted() {
  //    this.getProduit(this.id_commande);
  //  },

  //  methods: {
  //    ...mapActions(["getProduit", "PUT_USER_COMMANDE", "GET_USER_COMMANDE"]),
  //    confirm2() {
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
  //     update_commande() {
  //         let commande_a_modifier = {
	// 	          quantite_acheter: this.quantite_achat,
	// 	          utilisateur_id: 1,
	// 	          id_produit: this.id_commande,
  //         };
  //       console.log(commande_a_modifier);
  //       // this.PUT_USER_COMMANDE(commande_a_modifier);
  //     }
  //  },
 };
 </script>

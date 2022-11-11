<template>
   <div class="dashboard">
    <v-subheader class="d-flex justify-space-between align-center">
            <h3>Produits</h3>
            <v-btn color="success" class="rouded-lg">
                View Orders
            </v-btn>
    </v-subheader>
    <v-divider class="mx-4"></v-divider>

    <template>
    <v-divider class="mx-4"></v-divider>

</template>
   </div>
</template>

<script>
import { mapGetters , mapActions} from "vuex";


  export default {
    name: "Dashboard",
    data(){
        return{
          ok: false,
          loading: false,
          // selection: 1,
          page: "1",
          search: '',
            headers: [
          { text: 'id', value: 'id' },
          { text: 'Nom', align: 'start', sortable: false, value: 'Nom'},
          { text: 'Variété', sortable: false, value: 'Type.nom_variete_produit' },
          { text: 'lieu de provenance',sortable: false, value: 'lieux_provenance' },
          { text: 'quantité',sortable: false, value: 'quantite_produit' },
          { text: 'prix',sortable: false, value: 'prix_produit' },
          { text: '',sortable: false, value: 'action' },
        ],

      first: 0,
      liste_produit_tmp: [],
      length_product: [],
      user: {
      nom: "",
      prenom: "",
      localisation: "",
      contact: "",
      profil: "",
      email: "",
      phtoto: "",
      photofond: "",
      status: ""
    },
      image_url: "",
      video_url: "",
      uploadfile: "photoUser",
      inputFiles: { photoUser: "" },
        }
    },



  // watch: {
  //   listeProduits() {
  //     if (this.listeProduits) {
  //       console.log(this.listeProduits.donnees);
  //       this.liste_produit_tmp = this.listeProduits.donnees.slice(0, 9);
  //       this.length_product = this.listeProduits.donnees.length
  //       console.log(this.length_product);

  //     }
  //   },
  //   msgSuccessProduit() {
  //     if(this.msgSuccessProduit === "Le produit a bien été envoyé") {
  //       console.log("OK");
  //       this.ok = true
  //     }
  //   },
  //   isPostSet() {
  //     if(this.isPostSet === true) {
  //       console.log("true");
  //       console.log(this.isPostSet);
  //       this.getProduits
  //       this.getUserProducts()
  //       this.updateMsg()
  //     } else {
  //       console.log("false");
  //     }
  //   }
  // },
  // computed: {
  //   ...mapGetters(["listeProduits", "deleteProduits", "msgSuccessProduit", "updateProduit", "isDelSet", "isPostSet"]),
  // },


  // created() {

  //   this.getProduits();
  //   // les informations de l'administrateur
  //   const userdetails = JSON.parse(localStorage.getItem("user"));
  //   console.log("userdetails");
  //   this.toastService()

  //   if(userdetails === null) {
  //       this.$router.push("/connexion");
  //     return;
  //   }
  //   this.user.nom = userdetails.nom;
  //   this.user.prenom = userdetails.prenom;
  //   this.user.contact = userdetails.contact;
  //   this.user.localisation = userdetails.localisation;
  //   this.user.profil = userdetails.profil;
  //   this.user.email = userdetails.email;
  //   this.user.photo = userdetails.photo;
  //   this.user.photofond = userdetails.photofond;
  //   this.user.status = userdetails.status;
  //   console.log(userdetails);
  // },

  // mounted() {
  //   this.isPostSet,
  //   this.getProduits,
  //   this.getUserProducts
  //   },

  // methods: {
  //   ...mapActions(["getProduits" , "delProduit", "updateMsg", "postProduits", "getUserProducts"]),

  //   confirm2(produit) {
  //     this.$confirm.require({
  //       message: 'Voulez-vous vraiment supprimé cette publication ?',
  //       header: 'Suppression',
  //       icon: 'pi pi-info-circle',
  //       acceptClass: 'p-button-danger',
  //       accept: () => {
  //         if(this.delProduit(produit)) {
  //           this.getProduits()
  //         }
  //         this.$toast.add({severity:'error', detail:'Suppression réussi', life: 3000});
  //       },
  //       reject: () => {
  //           //this.$toast.add({severity:'info', summary:'Rejected', detail:'You have rejected', life: 3000});
  //       }
  //     });
  //       },

  //   redirection_check(produit) {
  //       console.log(produit);
  //     const path = `/detailduproduit/` + produit;
  //     if (this.$route.path !== path)
  //       this.$router.push({ path, params: { id: produit } });
  //   },
  //   redirection_see(produit) {
  //       console.log(produit);
  //     const path = `/details_produit/` + produit;
  //     if (this.$route.path !== path)
  //       this.$router.push({ path, params: { id: produit } });
  //   },
  //   redirection_update(produit) {
  //       console.log(produit);
  //     const path = `/modifier/` + produit;
  //     if (this.$route.path !== path)
  //       this.$router.push({ path, params: { id: produit } });
  //   },
  //   onPage(event) {
  //     this.liste_produit_tmp = this.listeProduits.donnees.slice(
  //       event.first,
  //       event.first + 9
  //     );
  //     // console.log(this.liste_produit_tmp);
  //   },

  //     // reserve () {
  //     //   this.loading = true
  //     //   setTimeout(() => (this.loading = false), 2000)
  //     // },

  //   toastService() {
  //      this.$toast.add({severity:'success', summary: 'Connexion', detail:'Bienvenue sur votre espace de profil', life: 3000});
  //   },
  //   userLogout() {
  //     localStorage.removeItem("user");
  //     localStorage.removeItem("userauth");
  //     localStorage.removeItem("token");
  //     // this.$router.push("/");
  //     window.location.href = '/'

  //   },
  // },
  }
</script >

<style>

</style>

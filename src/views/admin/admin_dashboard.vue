<template>
    <div class="dashboard">
        <v-subheader class="d-flex justify-space-between align-center">
            <h3>Tableau de bord</h3>
            <v-btn color="success" class="rouded-lg">
                Afficher les commandes
            </v-btn>
        </v-subheader>
        <v-row>
            <v-col lg="7" cols="12">
                <v-alert
                  dense
                  text
                  type="success"
                >
                   <strong>Connexion reussi</strong>, bienvenu à vous
                </v-alert>
                        <!--##################################### NOMBRE D'ELEMENT SUR L'APPLICATION ###################################### -->
                <v-row>
                    <v-col lg="6" cols="12">
                        <v-card elevation="2" class="rounded-lg">
                            <v-card-text class="d-flex justify-space-between align-center">
                                <div class="">
                                    <strong>Produits Total </strong><br>
                                    <small>Le nombre total de produit est :</small>
                                </div>
                                <v-avatar color="red" size="60">
                                    <span class="white--text">{{length_product}}</span>
                                </v-avatar>
                            </v-card-text>
                        </v-card>
                    </v-col>
                    <v-col lg="6" cols="12">
                        <v-card elevation="2" class="rounded-lg">
                            <v-card-text class="d-flex justify-space-between align-center">
                                <div class="">
                                    <strong>Total Category</strong><br>
                                    <small>2 dernière semaines</small>
                                </div>
                                <v-avatar color="purple" size="60">
                                    <span class="white--text">458</span>
                                </v-avatar>
                            </v-card-text>
                        </v-card>
                    </v-col>
                    <v-col lg="6" cols="12">
                        <v-card elevation="2" class="rounded-lg">
                            <v-card-text class="d-flex justify-space-between align-center">
                                <div class="">
                                    <strong>Total Orders</strong><br>
                                    <small>2 dernière semaines</small>
                                </div>
                                <v-avatar color="indigo" size="60">
                                    <span class="white--text">458</span>
                                </v-avatar>
                            </v-card-text>
                        </v-card>
                    </v-col>
                    <v-col lg="6" cols="12">
                        <v-card elevation="2" class="rounded-lg">
                            <v-card-text class="d-flex justify-space-between align-center">
                                <div class="">
                                    <strong>Pending Order</strong><br>
                                    <small>2 dernière semaines</small>
                                </div>
                                <v-avatar color="indigo" size="60">
                                    <span class="white--text">458</span>
                                </v-avatar>
                            </v-card-text>
                        </v-card>
                    </v-col>
                    <v-col lg="6" cols="12">
                        <v-card elevation="2" class="rounded-lg">
                            <v-card-text class="d-flex justify-space-between align-center">
                                <div class="">
                                    <strong>Nombre de visiteurs</strong><br>
                                    <small>2 dernière semaines</small>
                                </div>
                                <v-avatar color="blue" size="60">
                                    <span class="white--text">458</span>
                                </v-avatar>
                            </v-card-text>
                        </v-card>
                    </v-col>
                    <v-col lg="6" cols="12">
                        <v-card elevation="2" class="rounded-lg">
                            <v-card-text class="d-flex justify-space-between align-center">
                                <div class="">
                                    <strong>Nombre d'inscrit</strong><br>
                                    <small>2 dernière semaines</small>
                                </div>
                                <v-avatar color="green" size="60">
                                    <span class="white--text">458</span>
                                </v-avatar>
                            </v-card-text>
                        </v-card>
                    </v-col>
                </v-row>
            </v-col>
            <v-col lg="5" cols="12">
                <v-card>
                    <v-card-text>Flux de publications</v-card-text>
                    <v-timeline  align-top dense>
                    <v-timeline-item  color="teal lighten-3" small  v-for="produit in liste_produit_tmp" :key="produit.id">
                      <v-row class="pt-1">
                        <v-col cols="6">
                           {{ produit.date_produit }}
                        </v-col>
                        <v-col>
                          <strong>{{ produit.Nom }}</strong>
                          <!-- <div class="text-caption mb-2">Variété : {{ produit.Type.nom_variete_produit }}</div> -->
                          <!-- <v-avatar>
                            <v-img :src="produit.images"  ></v-img>
                          </v-avatar> -->
                        </v-col>
                      </v-row>
                    </v-timeline-item>
                  </v-timeline>
                </v-card>
            </v-col>
        </v-row>
        <!-- <v-row>
            <v-col lg="12">
              <v-data-table
                  :headers="headers"
                  :items="listeProduits.donnees"
                  :items-per-page="5"
                  class="elevation-1"
                  loading
                >
                    <template v-slot:item.action="props">
                        <v-btn color="success" @click="redirection(props.item.id)">Voir</v-btn>
                    </template>
                </v-data-table>
            </v-col>
        </v-row> -->
    </div>
</template>

<script>
import { mapGetters , mapActions} from "vuex";

  export default {
    name: "Dashboard",
    data(){
        return{
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
  //       this.liste_produit_tmp = this.listeProduits.donnees.slice(0, 4);
  //       this.length_product = this.listeProduits.donnees.length
  //       console.log(this.length_product);
  //     }
  //   },
  // },
  // computed: {
  //   ...mapGetters(["listeProduits",]),
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
  // methods: {
  //   ...mapActions(["getProduits"]),

  //   redirection(produit) {
  //       console.log(produit);
  //     const path = `/details_produit/` + produit;
  //     if (this.$route.path !== path)
  //       this.$router.push({ path, params: { id: produit } });
  //   },

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

<style scoped>

</style>

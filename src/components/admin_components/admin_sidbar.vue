<template>
<v-navigation-drawer v-model="drawer" app>
      <!-- <v-sheet color="grey lighten-4" class="pa-4"> -->
    <v-img src="https://testdenosterres.moonloop.eu/api/updload/f_20220824171358.jpg" class="pa-4">
      <div class="text-center mt-4">
        <v-avatar class="mb-4" color="grey darken-1" size="64">
            <v-img aspect-ratio="15" src="https://testdenosterres.moonloop.eu/api/updload/f_20220824171344.jpg" class="pa-4"></v-img>
        </v-avatar>

        <h6 class="white--text"><strong>vianney@gmail.com</strong></h6>
      </div>
    </v-img>
      <!-- </v-sheet> -->

      <!-- <v-divider></v-divider> -->

      <v-list>
        <v-list-item  link >
          <v-list-item-icon>
            <v-icon>mdi-microsoft-windows</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title><router-link to="/index_admin">Dashboard</router-link></v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <v-list-item  link >
          <v-list-item-icon>
            <v-icon>mdi-clipboard-list-outline</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <router-link to="/index_admin/produits"><v-list-item-title>Produits</v-list-item-title></router-link>
          </v-list-item-content>
        </v-list-item>
        <v-list-item  link >
          <v-list-item-icon>
            <v-icon>mdi-bookmark-outline</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <router-link to="/index_admin/commandes"><v-list-item-title>Commandes</v-list-item-title></router-link>
          </v-list-item-content>
        </v-list-item>
        <v-list-item  link >
          <v-list-item-icon>
            <v-icon>mdi-account</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <router-link to="/index_admin/profil_utilisateur"><v-list-item-title>Profil utilisateur</v-list-item-title></router-link>
          </v-list-item-content>
        </v-list-item>
        <v-list-item  link >
          <v-list-item-icon>
            <v-icon>mdi-account</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <router-link to="/index_admin/profil_administrateur"><v-list-item-title>Profil administrateur</v-list-item-title></router-link>
          </v-list-item-content>
        </v-list-item>
        <v-list-item  link >
          <v-list-item-icon>
            <v-icon>mdi-cog</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <router-link to="/index_admin/reglage"><v-list-item-title>Reglage</v-list-item-title></router-link>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
</template>

<script>
  export default {
    name: 'admin_sidbar',
    props: ['drawer'],
    data: () => ({

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
    }),

  // created() {
  //   const userdetails = JSON.parse(localStorage.getItem("user"));

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
  }
</script>

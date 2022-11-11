<template>
    <v-app-bar app color="white" elevate-on-scroll elevation="4" >
      <v-app-bar-nav-icon @click="$emit('handeDrawer')"></v-app-bar-nav-icon>
      <v-toolbar-title>Menu</v-toolbar-title>
      <v-spacer/>
      <v-col lg="6" cols="12">
        <v-form class="mt-8">
            <v-text-field rounded outlined dense placeholder="Rechercher ici" append-icon="mdi-magnify" />
        </v-form>
      </v-col>
      <v-spacer></v-spacer>
      <v-menu>
        <template v-slot:activator="{ on, attrs }">
              <span v-bind="attrs" v-on="on" style="cursor: pointer" class="mx-5 mr-10">
                  <v-badge offset-x="10" offset-y="10" color="red" content="5">
                      <v-icon>mdi-bell</v-icon>
                  </v-badge>
              </span>
        </template>
        <v-list three-line width="250">
            <template v-for="(item, index) in items">
              <v-subheader
                v-if="item.header"
                :key="item.header"
                v-text="item.header"
              ></v-subheader>

              <v-divider
                v-else-if="item.divider"
                :key="index"
                :inset="item.inset"
              ></v-divider>

              <v-list-item
                v-else
                :key="item.title"
              >
                <v-list-item-avatar>
                  <v-img :src="item.avatar"></v-img>
                </v-list-item-avatar>

                <v-list-item-content>
                  <v-list-item-title v-html="item.title"></v-list-item-title>
                  <v-list-item-subtitle v-html="item.subtitle"></v-list-item-subtitle>
                </v-list-item-content>
              </v-list-item>
            </template>
        </v-list>
     </v-menu>
     <v-menu>
            <template v-slot:activator="{ on, attrs }">
              <span v-bind="attrs" v-on="on" style="cursor: pointer" class="mx-5 mr-10">
                <v-chip link>
                    <v-badge dot bottom offset-y="10" offset-x="10" color="green">
                        <v-avatar size="40">
                            <img src="https://testdenosterres.moonloop.eu/api/updload/f_20220824171344.jpg" alt="">
                        </v-avatar>
                    </v-badge>
                    <span>Vianney</span>
                </v-chip>
              </span>
            </template>
            <v-list width="250" class="py-0">
                <v-list-item two-line>
                    <v-list-item-avatar>
                            <img src="https://testdenosterres.moonloop.eu/api/updload/f_20220824171344.jpg" alt="">
                    </v-list-item-avatar>
                    <v-list-item-content>
                        <v-list-item-title>
                            Vianney
                        </v-list-item-title>
                        <v-list-item-subtitle>
                            Connecté
                        </v-list-item-subtitle>
                    </v-list-item-content>
                </v-list-item>
                <v-list-item link>
                    <v-list-item-icon>
                        <v-icon>mdi-account</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                        <v-list-item-title>Profile</v-list-item-title>
                    </v-list-item-content>
                </v-list-item>
                <v-list-item link>
                    <v-list-item-icon>
                        <v-icon>mdi-key</v-icon>
                    </v-list-item-icon>
                    <router-link to="/index_admin/reglage">
                    <v-list-item-content >
                        <v-list-item-title>Publier un produit</v-list-item-title>
                    </v-list-item-content>
                  </router-link>
                </v-list-item>
                <v-list-item link>
                    <v-list-item-icon>
                        <v-icon>mdi-cog</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                        <v-list-item-title>Setting</v-list-item-title>
                    </v-list-item-content>
                </v-list-item>
                <v-list-item link>
                    <v-list-item-icon>
                        <v-icon>mdi-logout</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                        <v-list-item-title>Déconnexion</v-list-item-title>
                    </v-list-item-content>
                </v-list-item>
                <v-list-item link>
                    <v-list-item-icon>
                        <v-icon>mdi-book-open-page-variant-outline</v-icon>
                    </v-list-item-icon>
                    <!-- <v-list-item-content>
                      <v-menu transition="slide-x-transition" bottom right >
                      <template v-slot:activator="{ on, attrs }">
                        <v-btn class="deep-orange" color="primary" dark  v-bind="attrs" v-on="on" >
                          Pages
                        </v-btn>
                      </template>

                      <v-list>
                        <router-link to="/"><v-list-item>
                          <v-list-item-title>Acceuil</v-list-item-title>
                        </v-list-item>
                        </router-link>
                        <router-link to="/about"><v-list-item>
                          <v-list-item-title>A propos</v-list-item-title>
                        </v-list-item>
                        </router-link>
                        <router-link to="/services"><v-list-item>
                          <v-list-item-title>Magasin</v-list-item-title>
                        </v-list-item>
                        </router-link>
                        <router-link to="/contact"><v-list-item>
                          <v-list-item-title>Contact</v-list-item-title>
                        </v-list-item>
                        </router-link>
                      </v-list>
                     </v-menu>
                    </v-list-item-content> -->
                </v-list-item>
            </v-list>
     </v-menu>
      <!-- <v-btn icon>
        <v-icon>mdi-magnify</v-icon>
      </v-btn>

      <v-btn icon>
        <v-icon>mdi-heart</v-icon>
      </v-btn>

      <v-btn icon>
        <v-icon>mdi-dots-vertical</v-icon>
      </v-btn> -->
    </v-app-bar>
</template>

<script>
  export default {
    name: 'admin_sidbar',
data: () => ({

      items: [
        { header: 'Today' },
        {
          avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text--primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
        },
        { divider: true, inset: true },
        {
          avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
          title: 'Summer BBQ <span class="grey--text text--lighten-1">4</span>',
          subtitle: `<span class="text--primary">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.`,
        },
        { divider: true, inset: true },
        {
          avatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
          title: 'Oui oui',
          subtitle: '<span class="text--primary">Sandra Adams</span> &mdash; Do you have Paris recommendations? Have you ever been?',
        },
      ],

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


<!-- <template>
  <v-app id="inspire">
  </v-app>
</template>

<script>
  export default {
    data: () => ({
    }),
  }
</script> -->

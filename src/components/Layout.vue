<template>
  <v-app id="inspire">
    <v-app-bar
      :clipped-left="$vuetify.breakpoint.lgAndUp"
      app
      color="primary"
      dark
    >
<!--      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />-->

      <v-toolbar-title
        style="width: 350px"
      >
        <a href="/" class="white--text" style="text-decoration: none"><v-icon>mdi-egg</v-icon>&nbsp;Oeuf d'or</a>
      </v-toolbar-title>
      <v-text-field
        flat
        solo-inverted
        hide-details
        prepend-inner-icon="mdi-magnify"
        label="Recherche"
        class="hidden-sm-and-down pl-10 ml-4"
      />
      <v-spacer />
















<!-- <v-menu>
        <template v-slot:activator="{ on, attrs }">
          <span v-bind="attrs" v-on="on" style="cursor: pointer" class="mx-5 mr-10">
            <v-chip link>
                <v-badge dot bottom offset-y="10" offset-x="10" color="green">
                    <v-avatar size="40">
                        <img src="https://testdenosterres.moonloop.eu/api/updload/f_20220824171344.jpg" alt="">
                    </v-avatar>
                </v-badge>
                <span>ADMIN</span>
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
                        ADMIN
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
                <v-list-item-content>
                    <v-list-item-title>Change Password</v-list-item-title>
                </v-list-item-content>
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
                <v-list-item-content>
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
                </v-list-item-content>
            </v-list-item>
        </v-list>
 </v-menu> -->

 <v-menu>
  <template v-slot:activator="{ on, attrs }">
    <span v-bind="attrs" v-on="on" style="cursor: pointer" class="mx-5 mr-10">
      <v-chip link>
          <!-- <v-badge dot bottom offset-y="10" offset-x="10" color="green">
              <v-avatar size="40">
                  <img src="https://testdenosterres.moonloop.eu/api/updload/f_20220824171344.jpg" alt="">
              </v-avatar>
          </v-badge> -->
          <v-btn icon>
            <v-icon>mdi-account-circle</v-icon>
          </v-btn>
          <span>Non connecté</span>
      </v-chip>
    </span>
  </template>
  <v-list width="250" class="py-0">
    <router-link to="/register">
      <v-list-item link>
          <v-list-item-icon>
              <v-icon>mdi-key</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
              <v-list-item-title>INSCRIPTION</v-list-item-title>
          </v-list-item-content>
      </v-list-item>
    </router-link>
    <router-link to="/login">
      <v-list-item link>
        <v-list-item-icon>
            <v-icon>mdi-account</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
            <v-list-item-title>CONNEXION</v-list-item-title>
        </v-list-item-content>
    </v-list-item>
  </router-link>
  </v-list>
</v-menu>





















      <!-- <v-btn icon>
        <v-badge
          content="2"
          value="2"
          color="green"
          overlap
        >
          <v-icon>mdi-bell</v-icon>
        </v-badge>
      </v-btn> -->
      <v-btn  href="/cart" icon>
        <v-badge
          content="2"
          value="2"
          color="green"
          overlap
        >
          <v-icon>mdi-cart</v-icon>
        </v-badge>
      </v-btn>
    </v-app-bar>
    <v-main>
      <v-bottom-navigation
        :value="activeBtn"
        color="primary"
        horizontal
      >
        <v-btn>
          <router-link to="/">
            <span>Accueil</span>
          </router-link>
        </v-btn>
        <v-btn>
          <router-link to="/shop">
            <span>Magasin</span>
          </router-link>
        </v-btn>
        <!-- <v-menu open-on-hover offset-y>
          <template v-slot:activator="{ on }">
            <v-btn v-on="on">
              <span>Shop</span>
            </v-btn>
          </template>
          <v-card
            class="mx-auto"
            max-width="344"
            outlined
          >

            <v-list-item
              v-for="(item, index) in items"
              :key="index"
              @click=""
              href="/shop"
            >
              <v-list-item-title>{{ item.title }}</v-list-item-title>
            </v-list-item>

          </v-card>
        </v-menu> -->
        <!-- <a href="/product" class="v-btn">
          <span>Product</span>
        </a> -->

        <v-btn>
          <router-link to="/blog">
            <span>A propos</span>
          </router-link>
        </v-btn>
      </v-bottom-navigation>
    </v-main>
      <router-view/>
    <v-footer
      :padless="true"
    >
      <v-card
        flat
        tile
        width="100%"
        class="secondary white--text text-center"
      >
        <v-card-text>
          <v-btn
            class="mx-4 white--text"
            icon
          >
            <v-icon size="24px">mdi-home</v-icon>
          </v-btn>
          <v-btn
            class="mx-4 white--text"
            icon
          >
            <v-icon size="24px">mdi-email</v-icon>
          </v-btn>
          <v-btn
            class="mx-4 white--text"
            icon
          >
            <v-icon size="24px">mdi-calendar</v-icon>
          </v-btn>
           <v-btn
            class="mx-4 white--text"
            icon
          >
            <v-icon size="24px">mdi-delete</v-icon>
          </v-btn>

        </v-card-text>

        <v-card-text class="white--text pt-0">
          Phasellus feugiat arcu sapien, et iaculis ipsum elementum sit amet. Mauris cursus commodo interdum. Praesent ut risus eget metus luctus accumsan id ultrices nunc. Sed at orci sed massa consectetur dignissim a sit amet dui. Duis commodo vitae velit et faucibus. Morbi vehicula lacinia malesuada. Nulla placerat augue vel ipsum ultrices, cursus iaculis dui sollicitudin. Vestibulum eu ipsum vel diam elementum tempor vel ut orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
        </v-card-text>

        <v-divider></v-divider>

        <v-card-text class="white--text">
          {{ new Date().getFullYear() }} — <strong>ShipIT</strong>
        </v-card-text>
      </v-card>
    </v-footer>
  </v-app>
</template>
<script>
    export default {
        data () {
            return {
                items: [
                    { title: 'T-Shirts' },
                    { title: 'Jackets' },
                    { title: 'Shirts' },
                    { title: 'Jeans' },
                    { title: 'Shoes' },
                ],
                activeBtn: 1,
            }
        },
  methods: {


  }
  }
</script>

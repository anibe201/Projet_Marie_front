<template>
  <div>
    <div>
      <b-navbar toggleable="lg" type="dark" style="background-color: #00283a">
        <b-navbar-brand href="/">            
          <b-img :src="companyLogo" width="80"/>
        </b-navbar-brand>
        
        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
  
        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav>
            <b-nav-item to="/">Accueil</b-nav-item>
            <b-nav-item to="/products">Toutes Les Annonces</b-nav-item>
            <b-nav-item >Aide</b-nav-item>
          </b-navbar-nav>
    
          <!-- Right aligned nav items -->
          <b-navbar-nav class="ml-auto">
            <b-nav-form>
              <b-dropdown id="dropdown-left" :text="searchCategoryName" size="sm" variant="primary" class="m-2">
                <b-dropdown-item @click="set_category({ id: 0, name: 'All Category' })" >Tout</b-dropdown-item>
                <b-dropdown-item 
                  @click="set_category(category)"
                  v-for="category in categoryList"
                  :key="category.id"
              >
                {{ category.name }}
                </b-dropdown-item>
                <b-dropdown-item href="#">Autres</b-dropdown-item>
              </b-dropdown>
              <b-nav-form class="mr-auto" v-on:submit.prevent="search">
                <b-form-input size="sm" class="mr-sm-2" placeholder="" v-model="searchTxt"></b-form-input>
              </b-nav-form>
            </b-nav-form>
          </b-navbar-nav>
          <b-navbar-nav class="ml-auto">
            <b-nav-item class="mr-auto" @click="wishlist">
              <div>
                <b-icon scale="0.8" icon="suit-heart" />
                Favoris
              </div>
            </b-nav-item>
            <b-nav-item class="mr-auto" to="/cart-view">
              <div>
                <b-icon icon="cart2" />
                Panier
              </div>
            </b-nav-item>
            <b-nav-item class="mr-auto" v-if="userLoggedIn">
              <b-img height="25px" width="25px" :src="user.profileImage" />
            </b-nav-item>
            <b-nav-item-dropdown class="mr-auto" right v-if="userLoggedIn">
              <template #button-content>
                <span v-if="user.username" style="color: #fff">
                  {{ user.username }}
                </span>
                <span v-if="!user.username" style="color: #fff">
                  {{ user.firstName }} {{ user.lastName }}
                </span>
              </template>
              <b-dropdown-item v-if="admin" to="/admin">
                Profil Admin
              </b-dropdown-item>
              <b-dropdown-item v-if="admin" to="/admin">
                Tableau de bord
              </b-dropdown-item>
              <b-dropdown-item to="/profile">Profile</b-dropdown-item>
              <b-dropdown-item @click="logout()">Déconnexion</b-dropdown-item>
            </b-nav-item-dropdown>
            <vs-button
            dark
            shadow
            to="/register"
            v-if="!userLoggedIn"
            :active="active == 4"
            @click="active = 4"
            >Inscription
          </vs-button>
            <vs-button
            v-if="!userLoggedIn"
            to="/login"
            dark
            shadow
            :active="active == 4"
            @click="active = 4"
          >
            Connexion
          </vs-button>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </div>
    <!-- <SideBar /> -->
    <hr class="m-0" style="background-color: #000" />
  </div>
</template>

<script>
import SideBar from "../Common/sidbarMenu.vue";

/* eslint-disable */
export default {
  name: "TopHeader",
  components: {
    SideBar
  },
  data() {
    return {
      colors: [
          {
            color: 'danger',
            value: '1'
          },
        ],
        active: 'home',
      activeSidebar: false,
      user: {},
      admin: false,
      companyLogo: "",
      userLoggedIn: false,
      categoryList: [],
      searchTxt: "",
      searchCategoryId: 0,
      searchCategoryName: "All Category"
    };
  },
  async mounted() {
    this.companyLogo = await this.$store.dispatch("Company/getCompanyLogo");
    this.user = this.$store.state.CurrentUser.user;
    this.admin = this.$store.state.CurrentUser.admin;
    this.userLoggedIn = this.$store.state.CurrentUser.userLoggedIn;
    this.categoryList = await this.$store.dispatch("Category/getCategoryList");
  },
  computed: {},
  methods: {
    wishlist() {
      if (!this.userLoggedIn) {
        this.$bvToast.toast("Please login for the wishlist", {
          title: "Wishlist",
          variant: "primary",
          toaster: "b-toaster-top-center",
          noCloseButton: false,
          solid: true
        });
      } else {
        this.$router.push({ path: "/wishlist" });
      }
    },
    async logout() {
      this.$store.dispatch("CurrentUser/setToken", "");
      this.$store.dispatch("CurrentUser/setUser", {});
      this.$store.dispatch("Wishlist/clearWishlist");
      window.location.reload();
    },
    set_category(category) {
      this.searchCategoryId = category.id;
      this.searchCategoryName = category.name;
    },
    search() {
      var newRoute = "/products";
      if (this.searchCategoryId != 0) {
        const category = this.searchCategoryName;
        newRoute += "/" + category;
      }
      if (this.searchTxt != "") {
        const text = this.searchTxt;
        newRoute += "?q=" + text;
        this.$router.push({ path: newRoute });
      }
    }
  }
};
</script>

<style scoped lang="scss"></style>

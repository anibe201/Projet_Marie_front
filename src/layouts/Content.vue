<template>
  <v-app>
    <vertical-nav-menu :is-drawer-open.sync="isDrawerOpen"></vertical-nav-menu>

    <v-app-bar
      app
      flat
      absolute
      color="transparent"
    >
      <div class="boxed-container w-full">
        <div class="d-flex align-center mx-6">
          <!-- Left Content -->
          <v-app-bar-nav-icon
            class="d-block d-lg-none me-2"
            @click="isDrawerOpen = !isDrawerOpen"
          ></v-app-bar-nav-icon>
          <v-text-field
            rounded
            dense
            outlined
            :prepend-inner-icon="icons.mdiMagnify"
            class="app-bar-search flex-grow-0"
            hide-details
          ></v-text-field>

          <v-spacer></v-spacer>
          <span v-if="!isUserLogged()">
            <v-btn  class="ms-3" @click="goToLogin()">S'identifier</v-btn>
            <v-btn color="primary"  class="ms-3" @click="goToRegister()">S'inscrire</v-btn>
          </span>
          <!-- Right Content -->
          <theme-switcher  class="ms-3"></theme-switcher>
          <span v-if="isUserLogged()">
          <!-- <v-btn
            icon
            small
            class="ms-3"
          >
            <v-icon>
              {{ icons.mdiBellOutline }}
            </v-icon>
          </v-btn> -->
          <app-bar-user-menu ></app-bar-user-menu>
          </span>
        </div>
      </div>
    </v-app-bar>
    <v-main>
      <div class="app-content-container boxed-container pa-6">
        <slot></slot>
      </div>
    </v-main>

    <v-footer
      app
      inset
      color="transparent"
      absolute
      height="56"
      class="px-0"
    >
      <div class="boxed-container w-full">
        <div class="mx-6 d-flex justify-space-between">
          <span>
            &copy; 2021 <a
              class="text-decoration-none"
              target="_blank"
            >CI.Solidaire</a></span>
          <span class="d-sm-inline d-none">
            <a
              target="_blank"
              class="me-6 text--secondary text-decoration-none"
            ></a>
            <a
              target="_blank"
              class="me-6 text--secondary text-decoration-none"
            ></a>
            <a
              target="_blank"
              class="text--secondary text-decoration-none"
            >à venir</a>
          </span>
        </div>
      </div>
    </v-footer>
  </v-app>
</template>

<script>
import { ref } from '@vue/composition-api'
import { mdiMagnify, mdiBellOutline, mdiGithub } from '@mdi/js'
import VerticalNavMenu from './components/vertical-nav-menu/VerticalNavMenu.vue'
import ThemeSwitcher from './components/ThemeSwitcher.vue'
import AppBarUserMenu from './components/AppBarUserMenu.vue'

export default {
  components: {
    VerticalNavMenu,
    ThemeSwitcher,
    AppBarUserMenu,
  },
  setup() {
    const isDrawerOpen = ref(null)

    return {
      isDrawerOpen,

      // Icons
      icons: {
        mdiMagnify,
        mdiBellOutline,
        mdiGithub,
      },
    }
  },

  methods: {
    isUserLogged() {
      const userDetails = JSON.parse(localStorage.getItem("user"));
      if(userDetails !== null) {
        return true
      } return false
    },
    goToLogin() {
      this.$router.push({ name: "pages-login" });
    },
    goToRegister() {
      this.$router.push({ name: "pages-register" });
    }
  }
}
</script>

<style lang="scss" scoped>
.v-app-bar ::v-deep {
  .v-toolbar__content {
    padding: 0;

    .app-bar-search {
      .v-input__slot {
        padding-left: 18px;
      }
    }
  }
}

.boxed-container {
  max-width: 1440px;
  margin-left: auto;
  margin-right: auto;
}
</style>

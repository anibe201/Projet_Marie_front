<template>
  <v-menu
    offset-y
    left
    nudge-bottom="14"
    min-width="230"
    content-class="user-profile-menu-content"
  >
    <template v-slot:activator="{ on, attrs }">
      <v-badge
        bottom
        color="success"
        overlap
        offset-x="12"
        offset-y="12"
        class="ms-4"
        dot
      >
        <v-avatar
          size="40px"
          v-bind="attrs"
          v-on="on"
        >
          <v-img :src="require('@/assets/images/avatars/1.png')"></v-img>
        </v-avatar>
      </v-badge>
    </template>
    <v-list>
      <div class="pb-3 pt-2">
        <v-badge
          bottom
          color="success"
          overlap
          offset-x="12"
          offset-y="12"
          class="ms-4"
          dot
        >
          <v-avatar size="40px">
            <v-img :src="require('@/assets/images/avatars/1.png')"></v-img>
          </v-avatar>
        </v-badge>
        <div
          class="d-inline-flex flex-column justify-center ms-3"
          style="vertical-align:middle"
        >
          <span class="text--primary font-weight-semibold mb-n1">
            Vianney Anibé
          </span>
          <small class="text--disabled text-capitalize">Connecté</small>
        </div>
      </div>

      <v-divider></v-divider>

      <!-- Profile -->
      <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiAccountOutline }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content @click="goToProfil()">
          <v-list-item-title>Profil</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <!-- Email -->
      <!-- <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiEmailOutline }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>Inbox</v-list-item-title>
        </v-list-item-content>
      </v-list-item> -->

      <!-- Chat -->
      <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiChatOutline }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content @click="goToPublication()">
            <v-list-item-title>Publier une annonce</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <!-- <v-divider class="my-2"></v-divider> -->

      <!-- Settings -->
      <!-- <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiCogOutline }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>Re</v-list-item-title>
        </v-list-item-content>
      </v-list-item> -->

      <!-- Pricing -->
      <!-- <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiCurrencyUsd }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>Pricing</v-list-item-title>
        </v-list-item-content>
      </v-list-item> -->

      <!-- FAQ -->
      <!-- <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiHelpCircleOutline }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>FAQ</v-list-item-title>
        </v-list-item-content>
      </v-list-item> -->

      <v-divider class="my-2"></v-divider>

      <!-- Logout -->
      <v-list-item link>
        <v-list-item-icon class="me-2">
          <v-icon size="22">
            {{ icons.mdiLogoutVariant }}
          </v-icon>
        </v-list-item-icon>
        <v-list-item-content @click="userLogout()">
          <v-list-item-title>Se déconnecter</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </v-menu>
</template>

<script>
import {
  mdiAccountOutline,
  mdiEmailOutline,
  mdiCheckboxMarkedOutline,
  mdiChatOutline,
  mdiCogOutline,
  mdiCurrencyUsd,
  mdiHelpCircleOutline,
  mdiLogoutVariant,
} from '@mdi/js'

export default {
  setup() {
    return {
      icons: {
        mdiAccountOutline,
        mdiEmailOutline,
        mdiCheckboxMarkedOutline,
        mdiChatOutline,
        mdiCogOutline,
        mdiCurrencyUsd,
        mdiHelpCircleOutline,
        mdiLogoutVariant,
      },
    }
  },

  methods: {
    userLogout() {
      localStorage.removeItem("user");
      localStorage.removeItem("userauth");
      window.location.href = '/'

    },
    goToPublication() {
      this.$router.push({ name: "publication" });
    },
    goToProfil() {
      this.$router.push({ name: "pages-account-settings" });
    }
  }
}
</script>

<style lang="scss">
.user-profile-menu-content {
  .v-list-item {
    min-height: 2.5rem !important;
  }
}
</style>

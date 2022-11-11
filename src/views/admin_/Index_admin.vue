<template>
  <v-app id="inspire">
    <Admin_header @handeDrawer="drawer = !drawer" />
    <Admin_sidbar :drawer="drawer" />
    <v-main>
      <v-container class="py-8 px-6" fluid>
        <router-view />
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import Admin_header from '../../components/admin_components/admin_header.vue';
import Admin_sidbar from '../../components/admin_components/admin_sidbar.vue';
// import Admin_dashboard from '../../components/admin_components/admin_dashboard.vue';

  export default {
    data: () => ({
        cards: ["Today", "Yesterday"],
        drawer: true,
        links: [
            ["mdi-inbox-arrow-down", "Inbox"],
            ["mdi-send", "Send"],
            ["mdi-delete", "Trash"],
            ["mdi-alert-octagon", "Spam"],
        ],
    }),
    components: { Admin_header, Admin_sidbar, 
    // Admin_dashboard 
    }
}
</script>
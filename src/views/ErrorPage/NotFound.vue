<template>
  <div>
    <TopHeader />
    <b-container class="mt-4">
      <b-row align-h="center">
        <div class="text-center">
          <div style="font-size: 100px">404</div>
          <h4>Page non trouvée.</h4>
          <h6>La requette que vous executé n'existe pas sur le serveur.</h6>
          <a href="/"><b-icon icon="arrow-left" />Retourner à la page d'accueil</a>
        </div>
      </b-row>
    </b-container>
    <Footer class="mt-5" />
  </div>
</template>

<script>
import TopHeader from "@/components/Common/TopHeader.vue";
import Footer from "@/components/Common/Footer.vue";
export default {
  name: "NotFound",
  components: {
    TopHeader,
    Footer
  },
  data() {
    return {};
  },
  mounted() {},
  methods: {},
  computed: {}
};
</script>

<style lang="scss" scoped></style>

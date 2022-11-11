<template>
  <div>
    <TopHeader />
    <b-container class="mt-4">
      <b-row align-h="center">
        <div class="text-center">
          <div style="font-size: 100px">401</div>
          <h4>Non autorisé</h4>
          <h6>L'accès à cette ressource est interdit.</h6>
          <a href="/"><b-icon icon="arrow-left" />Retourner à l'accueil</a>
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
  name: "Unauthorized",
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

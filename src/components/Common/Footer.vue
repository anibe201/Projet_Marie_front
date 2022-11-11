<template>
  <div style="background: #1F2E50;color: #ffffff">
    <b-container class="pb-4">
      <b-row class="pt-5 pb-4">
        <b-col cols="5">
          <h2>
            <strong>{{ company.name }}</strong>
          </h2>
          <p>{{ company.motive }}</p>
        </b-col>
        <b-col cols="3">
          <h3>Liens utile</h3>
          <b-link href="#">Accueil</b-link><br />
          <b-link href="#">Magazin</b-link><br />
          <b-link href="#">Votre compte</b-link><br />
          <b-link href="#">Terms &amp; Conditions</b-link><br />
          <!-- <b-link href="#">Privacy Policy</b-link><br /> -->
          <b-link href="#">Les developpeurs</b-link><br />
        </b-col>
        <b-col cols="4">
          <h3>Address</h3>
          <div v-html="company.location" />
          <div class="mt-3">
            <b-icon icon="phone" /> {{ company.phoneNo }} <br />
            <b-icon icon="envelope" /> {{ company.email }} <br />
          </div>
        </b-col>
      </b-row>
      <hr />
      <h5>© 2022, Tout droit reservé</h5>
    </b-container>
  </div>
</template>

<script>
export default {
  name: "Footer",
  data() {
    return {
      company: {}
    };
  },
  async mounted() {
    this.company = await this.$store.dispatch("Company/getCompany");
  }
};
</script>

<style scoped lang="scss">
#footer {
  bottom: 0px;
}
</style>

<template>
  <div>
    <TopHeader />
    <SecondHeader />
    <b-container>
      <Showcase class="mt-3" />
      <TopSellProduct class="mt-5" />
      <NewAddProduct class="mt-5" />
      <Support class="mt-5" />
    </b-container>
    <Footer class="mt-5" />
  </div>
</template>

<script>
// @ is an alias to /src
import TopHeader from "@/components/Common/TopHeader_.vue";
import SecondHeader from "@/components/Home_/SecondHeader_.vue";
import Showcase from "@/components/Home_/Showcase_.vue";
import TopSellProduct from "@/components/Home_/TopSellProduct_.vue";
import NewAddProduct from "@/components/Home_/NewAddProduct_.vue";
import Support from "@/components/Home_/Support_.vue";
import Footer from "@/components/Common/Footer_.vue";
export default {
  name: "Home",
  components: {
    TopHeader,
    SecondHeader,
    Showcase,
    TopSellProduct,
    NewAddProduct,
    Support,
    Footer
  },
  mounted() {}
};
</script>

<style lang="scss" scoped></style>

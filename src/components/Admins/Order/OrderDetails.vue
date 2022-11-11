<template>
  <div>
    <b-row>
      <b-col>
        <h5 class="font-weight-bold">Coût de la commande</h5>
        <hr />

        <h6 class="font-weight-bold">Prix du produit</h6>
        {{ orderInfo.productCost }} {{ orderInfo.currency }}
        <hr />
        <h6 class="mt-4 font-weight-bold">Prix du transport</h6>
        {{ orderInfo.shippingCost }} {{ orderInfo.currency }}
        <hr />
        <h6 class="mt-4 font-weight-bold">Montant total</h6>
        {{ orderInfo.productCost + orderInfo.shippingCost }}
        {{ orderInfo.currency }}
        <hr />
      </b-col>
    </b-row>
    <b-row class="mt-5">
      <b-col>
        <h5 class="font-weight-bold">Details du client</h5>
        <hr />
        <h6 class="font-weight-bold">Nom</h6>
        {{ orderInfo.name }}
        <h6 class="mt-4 font-weight-bold">Email</h6>
        {{ orderInfo.email }}
        <h6 class="mt-4 font-weight-bold">Numero de telephone</h6>
        {{ orderInfo.phoneNo }}
      </b-col>
    </b-row>
    <b-row class="mt-5">
      <b-col>
        <h5 class="font-weight-bold">Adresse de livraison</h5>
        <hr />
        <div v-html="orderInfo.address"></div>
      </b-col>
    </b-row>
  </div>
</template>

<script>
export default {
  name: "OrderDetails",
  props: {
    orderInfo: {
      type: Object,
      required: true
    }
  },
  components: {},
  data() {
    return {};
  },
  mounted() {},
  methods: {},
  computed: {}
};
</script>

<style lang="scss" scoped></style>

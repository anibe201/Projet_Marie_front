<template>
  <div>
    <b-row>
      <b-col
        cols="6"
        v-for="product in checkoutProduct"
        :key="product.productId"
      >
        <b-card-group deck>
          <b-card img-top style="max-width: 14rem" class="mb-4">
            <b-card-img
              :src="product.image"
              style="max-width: 14rem; max-height: 14rem"
              alt="Image non trouvée"
            />
            <br />
            <b-link :to="{ path: `/product/${product.productId}` }">
              {{ product.title }}
            </b-link>
            <br />
            <small class="mt-2">
              Prix: {{ product.amount }} {{ product.currency }}
            </small>
            <br />
            <small class="mt-2">Quantité: {{ product.quantity }}</small>
            <br />
            <small class="mt-2">
              Cost: {{ product.amount * product.quantity }}
              {{ product.currency }}
            </small>
          </b-card>
        </b-card-group>
      </b-col>
    </b-row>
    <b-row class="mt-5">
      <b-col cols="2" />
      <b-col cols="10">
        <b-card class="mt-5" v-if="subTotalAmount != 0">
          <b-row>
            <b-col cols="8">
              <h5>Prix</h5>
            </b-col>
            <b-col cols="4">
              <b-card-text>
                {{ subTotalAmount }} {{ selectedCurrency }}
              </b-card-text>
            </b-col>
          </b-row>
          <b-row>
            <b-col cols="8">
              <h5>Transport</h5>
            </b-col>
            <b-col cols="4">
              <b-card-text>
                {{ shippingRate }}  Fcfa
                <!-- {{ selectedCurrency }} -->
              </b-card-text>
            </b-col>
          </b-row>
          <hr />
          <b-row>
            <b-col cols="8">
              <h5>Totale</h5>
            </b-col>
            <b-col cols="4">
              <b-card-text>
                {{ totalAmount }} {{ selectedCurrency }}
              </b-card-text>
            </b-col>
          </b-row>
        </b-card>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <b-alert
          variant="primary"
          class="mb-0 mt-5 p-1 pl-2"
          :show="!formValidate"
        >
          {{ message }}
        </b-alert>
      </b-col>
    </b-row>
    <b-row class="mt-4" v-if="subTotalAmount != 0">
      <b-col cols="5">
        <b-button block variant="warning" to="/cart-view">Modifier le panier</b-button>
      </b-col>
      <b-col cols="2" />
      <b-col>
        <b-button
          v-if="!payBtnSpin"
          @click="checkoutApplied"
          block
          variant="success"
        >
          <b-icon icon="cursor-fill" />
          Payer en ligne
        </b-button>









        <!-- <b-button
        v-if="!payBtnSpin"
        @click="createOrder()"
        block
        variant="success"
      >
        <b-icon icon="cursor-fill" />
        Payer à la livraison
      </b-button> -->
      <b-button
        @click="createOrder()"
        block
        variant="success"
      >
        <b-icon icon="cursor-fill" />
        Payer à la livraison
      </b-button>






        <b-button v-if="payBtnSpin" block variant="success">
          Processing...
          <b-spinner small variant="light"></b-spinner>
        </b-button>
      </b-col>
    </b-row>
    <b-row v-if="subTotalAmount == 0">
      <b-col class="text-center">
        <h4>Pas de produit à acheter !!!</h4>
      </b-col>
    </b-row>
  </div>
</template>

<script>
import OrderService from "@/services/OrderService.js";
import OrderItemService from "@/services/OrderItemService.js";
import ProductsService from "@/services/ProductsService.js";


import { loadStripe } from "@stripe/stripe-js";
const stripeInit = loadStripe(
  "pk_test_51I4mbiGV3mLAYJeQ13BCPtt0b0DWMHAJALhdOaAVp2sA5P0WgjPcH21Ziw8fQpbBn8kZsNgT513t7htPCDlwnfzh00gkYylUV1"
);
import CheckoutService from "@/services/CheckoutService.js";

export default {
  name: "BuyItem",
  components: {},
  data() {
    return {
      percent: 0,
      order: {},
      session: {},
      validSession: false,
      sessionId: null,

      selectedCurrency: "Fcfa",
      payBtnSpin: false,
      subTotalAmount: 0,
      formValidate: true,
      message: "form data is not valid",
      shippingRate: this.$store.state.Checkout.shippingRate,
      totalAmount: 0,
      checkoutProduct: null
    };
  },
  computed: {},
  mounted() {
    this.checkoutProduct = this.$store.state.Cart.cartProducts;
    var i;
    for (i = 0; i < this.checkoutProduct.length; i++) {
      this.subTotalAmount +=
        this.checkoutProduct[i].amount * this.checkoutProduct[i].quantity;
    }
    this.totalAmount = this.subTotalAmount + this.shippingRate;
  },
  methods: {
    async checkoutApplied() {
      const response = await this.$store.dispatch(
        "Checkout/informationValidate"
      );
      if (!response) {
        this.formValidate = false;
        return;
      }
      this.payBtnSpin = true;
      const customerName = response.name;
      const customerEmail = response.email;
      const customerPhoneNo = response.phoneNo;
      const shippingAddress = response.shippingAddress;
      var i;
      var checkoutItems = [];
      for (i = 0; i < this.checkoutProduct.length; i++) {
        var obj = {
          currency: "Fcfa",
          name: this.checkoutProduct[i].title,
          description: this.checkoutProduct[i].productId,
          amount: this.checkoutProduct[i].amount * 100,
          quantity: this.checkoutProduct[i].quantity
        };
        checkoutItems.push(obj);
      }
      checkoutItems.push({
        name: "Shipping Cost",
        amount: this.shippingRate * 100,
        currency: "Fcfa",
        quantity: 1
      });
      try {
        const checkoutSession = (
          await CheckoutService.createCheckoutSession({
            checkoutProduct: checkoutItems,
            customerName: customerName,
            customerEmail: customerEmail,
            customerPhoneNo: customerPhoneNo,
            shippingAddress: shippingAddress
          })
        );
        // console.log(data);
        console.log(checkoutSession);
        console.log(checkoutSession.data.id);
        const idd = checkoutSession.data.id;
        const path = `/success-payment`;
        if (this.$route.path !== path)
          this.$router.push({ path, params: { id: idd } });
          // router.push({ path: 'register', query: { plan: 'private' }})






































        // stripeInit.then(stripe => {
        //   stripe
        //     .redirectToCheckout({
        //       sessionId: checkoutSession.id
        //     })
        //     .catch(function(error) {
        //       console.error(error);
        //     });
        // });
      } catch (error) {
        console.log(error.response.data.error);
      }
    },


    async createOrder() {
      const response =  this.$store.dispatch(
        "Checkout/informationValidate"
      );
      if (!response) {
          this.formValidate = false;
        return;
      }
      this.payBtnSpin = true;
      const customerName = response.name;
      const customerEmail = response.email;
      const customerPhoneNo = response.phoneNo;
      const shippingAddress = response.shippingAddress;
      var i;
      var checkoutItems = [];
      for (i = 0; i < this.checkoutProduct.length; i++) {
        var obj = {
          currency: "Fcfa",
          name: this.checkoutProduct[i].title,
          description: this.checkoutProduct[i].productId,
          amount: this.checkoutProduct[i].amount * 100,
          quantity: this.checkoutProduct[i].quantity
        };
        checkoutItems.push(obj);
      }
      checkoutItems.push({
        name: "Shipping Cost",
        amount: this.shippingRate * 100,
        currency: "Fcfa",
        quantity: 1
      });
      try {
        const checkoutSession = (
          await CheckoutService.createCheckoutSession({
            checkoutProduct: checkoutItems,
            customerName: customerName,
            customerEmail: customerEmail,
            customerPhoneNo: customerPhoneNo,
            shippingAddress: shippingAddress
          })
        );
        console.log(checkoutSession);

        this.sessionId = checkoutSession.data.id;
        // stripeInit.then(stripe => {
        //   stripe
        //     .redirectToCheckout({
        //       sessionId: checkoutSession.id
        //     })
        //     .catch(function(error) {
        //       console.error(error);
        //     });
        // });
      } catch (error) {
        console.log(error);
      }
        // var previousOrder;
        // try {
        //   previousOrder = (await OrderService.getOrderBySessionId(this.sessionId));
        // } catch (error) {
        //   console.log(error);
        // }
        // if (previousOrder === "ya rien les champi") {
        //   this.$store.dispatch("Cart/clearCart");
        // };
        

    try {
      this.session = (
        await CheckoutService.retrieveCheckoutSession(this.sessionId)
      );
      console.log(this.session)
      // this.validSession = Object.keys(this.session).length != 0;
    } catch (error) {
      console.log(error);
    }
    // if (!this.validSession) return;

    
    // const lineItems = this.session.line_items.data;
    // const shipCost = lineItems[lineItems.length - 1].amount_total;
    const shipCost = 0;
    try {
      this.order = (
        await OrderService.createOrder({
          name: customerName,
          phoneNo: customerPhoneNo,
          email: customerEmail,
          address: shippingAddress,
          status: "paid",
          variant: "dark",
          checkoutSessionId: this.sessionId,
          // productCost: (this.session.amount_total - shipCost) / 100,
          productCost: this.totalAmount,
          // currency: this.session.currency.toUpperCase(),
          currency: this.selectedCurrency.toUpperCase(),
          // shippingCost: shipCost / 100
          shippingCost: 0
        })
      );
      console.log(this.order)
    } catch (error) {
      console.log(error);
    }


    console.log(this.checkoutProduct)
    console.log(this.order.data.id);

    var i;
    for (i = 0; i < this.checkoutProduct.length; i++) {
      const productId = parseInt(this.checkoutProduct[i].productId);
      console.log(parseInt(this.checkoutProduct[i].productId));

      try {
        await OrderItemService.createOrderItem({
          quantity: this.checkoutProduct[i].quantity,
          ProductId: productId,
          OrderId: this.order.data.id
        });
      } catch (error) {
        console.log(error);
      }
      // var lineproduct;
      // try {
      //   lineproduct = (await ProductsService.getProductSales(productId)).data;
      // } catch (error) {
      //   console.log(error.response.data.error);
      // }
      // try {
      //   await ProductsService.updateProduct({
      //     id: productId,
      //     sales: lineproduct.sales + lineItems[i].quantity
      //   });
      // } catch (error) {
      //   console.log(error.response.data.error);
      // }
    }

        console.log(this.checkoutProduct);
        console.log(checkoutItems);
        console.log(this.order.data);
        const global = JSON.parse(localStorage.getItem("vuex"));
        console.log(global.CurrentUser.user);


      // openLoading() {

          const loading = this.$vs.loading({
            percent: this.percent
          })
          const interval = setInterval(() => {
            if (this.percent < 100) {
              // loading.changePercent(`${this.percent = this.percent + 10}%`)
              loading.changePercent(`${this.percent = this.percent + 4}%`)
            }
          }, 60)
          setTimeout(() => {
            console.log('100% finish');
            // this.POST_PRODUIT(this.data);
            const facture = {
                    infoProduit: this.checkoutProduct,
                    elmt2: checkoutItems,
                    infoCommande: this.order.data,
                    infoUser: global.CurrentUser.user
                  }
                  console.log(facture);
                  localStorage.setItem("elmtFacture", JSON.stringify(facture))
                
            const path = `/success-payment`;
            if (this.$route.path !== path)
              this.$router.push({ path, params: { id: "C'est OK" } });

            loading.close()
            clearInterval(interval)
            this.percent = 0
          }, 3000)
        // }




    },
  }
};
</script>

<style lang="scss" scoped></style>

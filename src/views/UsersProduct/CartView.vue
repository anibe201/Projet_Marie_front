<template>
  <div>
    <TopHeader></TopHeader>
    <b-container class="mt-3">
      <b-row>
        <b-col class="text-center">
          <h2>Panier</h2>
          <hr />
        </b-col>
      </b-row>
      <b-row v-if="cartItemCount == 0">
        <b-col>
          Votre panier est vide !!
          <hr />
        </b-col>
      </b-row>
      <div v-if="cartItemCount != 0">
        <b-row>
          <b-col cols="3" />
          <b-col cols="3">
            <strong>Article</strong>
          </b-col>
          <b-col cols="2">
            <strong>Prix</strong>
          </b-col>
          <b-col cols="4">
            <strong>Quantité</strong>
          </b-col>
        </b-row>
        <hr />
      </div>
      <div v-for="product in cartProducts" :key="product.productId">
        <b-row>
          <b-col cols="3" class="text-center">
            <b-img style="max-width:66%" :src="product.image" alt="No Image" />
          </b-col>
          <b-col cols="3">
            <b-link :to="`/product/${product.productId}`">
              {{ product.title }}
            </b-link>
            <b-row class="mt-2" align-v="center">
              <b-col>
                <!-- <b-form-rating
                  :precision="
                    Math.round(product.rating) == product.rating ? 0 : 1
                  "
                  size="sm"
                  readonly
                  show-value
                  show-value-max
                  :value="product.rating"
                  variant="primary"
                /> -->
              </b-col>
            </b-row>
            <AddToWishlist
              class="mt-2"
              addButtonTitle="Ajouter aux favoris"
              addedButtonTitle="Mon favoris"
              buttonType="sm"
              :productId="product.productId"
            />
          </b-col>
          <b-col cols="2">
            {{ product.amount * product.quantity }} Fcfa
            <!-- {{ product.currency }} -->
            </b-col
          >
          <b-col cols="4">
            <div>
              <b-button
                size="sm"
                variant="primary"
                @click="quantityInc(product)"
                >+
              </b-button>
              <a class="ml-4">{{ product.quantity }}</a>
              <b-button
                size="sm"
                variant="warning"
                class="ml-4"
                @click="quantityDec(product)"
                >-
              </b-button>
              <b-button
                size="sm"
                class="ml-5"
                @click="removeCartItem(product)"
                variant="danger"
              >
                Supprimer l'article
              </b-button>
            </div>
          </b-col>
        </b-row>
        <hr />
      </div>
      <div v-if="cartItemCount != 0">
        <b-row class="mb-3">
          <b-col cols="10" />
          <b-col cols="2">
            <b-card>
              <b-card-title>Totale</b-card-title>
              <b-card-text
                >{{ totalAmount }}  Fcfa
                <!-- {{ selectedCurrency }} -->
                </b-card-text
              >
            </b-card>
          </b-col>
        </b-row>
        <b-row>
          <b-col cols="2">
            <b-button block variant="info" to="/products">
              <span style="color: white;">
                Ajouter plus
              </span>
            </b-button>
          </b-col>
          <b-col cols="6" />
          <b-col cols="4">
            <b-button block variant="primary" to="/checkout" >
              <b-icon icon="cursor-fill" />
              <span style="color: white;">     Commander</span>
            </b-button>
          </b-col>
        </b-row>
      </div>
    </b-container>
    <Footer class="mt-5" />
  </div>
</template>

<script>
import TopHeader from "@/components/Common/TopHeader.vue";
import AddToWishlist from "@/components/MaintainProduct/AddToWishlist.vue";
import Footer from "@/components/Common/Footer.vue";
import { mapState } from "vuex";
export default {
  name: "MyCart",
  components: {
    TopHeader,
    AddToWishlist,
    Footer
  },
  data() {
    return {
      selectedCurrency: "USD"
    };
  },
  mounted() {},
  computed: {
    ...mapState({
      cartProducts: state => state.Cart.cartProducts
    }),
    cartItemCount() {
      return this.cartProducts.length;
    },
    totalAmount() {
      var i,
        amount = 0;
      for (i = 0; i < this.cartProducts.length; i++) {
        amount += this.cartProducts[i].amount * this.cartProducts[i].quantity;
      }
      return amount;
    }
  },
  methods: {
    async quantityInc(product) {
      await this.$store.dispatch("Cart/updateCartItemQuantity", {
        productId: product.productId,
        quantity: product.quantity + 1
      });
    },
    async quantityDec(product) {
      if (product.quantity > 1) {
        await this.$store.dispatch("Cart/updateCartItemQuantity", {
          productId: product.productId,
          quantity: product.quantity - 1
        });
      }
    },
    async removeCartItem(product) {
      const itemIndex = await this.$store.dispatch(
        "Cart/removeCartItem",
        product.productId
      );
      if (itemIndex == -1) {
        this.$bvToast.toast("Product removed from cart", {
          title: "Cart",
          variant: "success",
          toaster: "b-toaster-top-center",
          noCloseButton: false,
          solid: true
        });
      }
    }
  }
};
</script>

<style scoped lang="scss"></style>

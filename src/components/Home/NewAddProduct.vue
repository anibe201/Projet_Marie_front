<template>
  <div>
    <b-row v-if="newAddProduct.length != 0">
      <b-col>
        <h3>{{ newAddViewTitle }}</h3>
        <hr />
        <b-row>
          <div class="col-md-4 mt-2" v-for="product in newAddProduct" :key="product.id"> 
            <div class="card">
              <div class="card-body">
                <div class="card-img-actions">
                  <img :src="product.image1" class="card-img img-fluid" width="96" height="350" alt="" @click="$router.push({ path: `/product/${product.id}` })">
                </div>
              </div>
              <div class="card-body bg-light text-center">
                <div class="mb-2">
                  <h6 class="font-weight-semibold mb-2">
                    <a class="text-default mb-2" data-abc="true" @click="$router.push({ path: `/product/${product.id}` })">{{ product.title }}</a>
                  </h6>
                  <!-- Categorie -->
                  <a class="text-muted" data-abc="true">Catégorie : #</a>
                </div>
                <h3 class="mb-0 font-weight-semibold">{{ product.amount }} Fcfa</h3>
                <div>
                  <b-form-rating
                    :precision="
                      Math.round(product.rating) == product.rating ? 0 : 1
                    "
                    size="sm"
                    show-value
                    show-value-max
                    readonly
                    :value="product.rating"
                    variant="primary"
                  />
                </div>
                <b-row>
                  <b-col cols="4">
                    <AddToWishlist
                      class="mt-2"
                      :key="wishlistKey"
                      addButtonTitle=""
                      addedButtonTitle=""
                      buttonType="sm"
                      :productId="product.id"
                    />
                  </b-col>
                  <b-col cols="8">
                    <AddToCart
                      class="mt-2"
                      addButtonTitle="Ajouter au panier"
                      addedButtonTitle="Produit ajouté"
                      buttonType="sm"
                      :key="cartComponentKey"
                      :productId="product.id"
                      :rating="product.rating"
                      :currency="product.currency"
                      :image="product.image1"
                      :title="product.title"
                      :amount="product.amount"
                    />
                  </b-col>
                </b-row>                
              </div>
            </div>               
           </div> 
        </b-row>
      </b-col>
    </b-row>
  </div>
</template>

<script>
import ProductsService from "@/services/ProductsService.js";
import AddToCart from "@/components/MaintainProduct/AddToCart.vue";
import AddToWishlist from "@/components/MaintainProduct/AddToWishlist.vue";
export default {
  name: "NewAddProduct",
  components: {
    AddToCart,
    AddToWishlist
  },
  data() {
    return {
      newAddProduct: [],
      cartComponentKey: 0,
      wishlistKey: 2,
      newAddLimit: 6,
      newAddViewTitle: "Stock nouvellement ajouté"
    };
  },
  async mounted() {
    this.newAddProduct = (
      await ProductsService.newAddProduct(this.newAddLimit)
    ).data;
    this.forceRerender();
  },
  methods: {
    forceRerender() {
      this.cartComponentKey += 1;
      this.wishlistKey += 1;
    }
  }
};
</script>

<style lang="scss" scoped></style>

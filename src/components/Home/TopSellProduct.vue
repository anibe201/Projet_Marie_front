<template>
  <div>
    <b-row v-if="topSellProduct.length != 0">
      <b-col>
        <h3>{{ topSellViewTitle }}</h3>
        <hr />
        <b-row>      
          <div class="container d-flex justify-content-center mt-50 mb-50">
            <div class="row">
              <div class="col-md-4 mt-2" v-for="product in topSellProduct" :key="product.id"> 
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
                      <a href="#" class="text-muted" data-abc="true">Laptops & Notebooks</a>
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
  name: "TopSellProduct",
  components: {
    AddToCart,
    AddToWishlist
  },
  data() {
    return {
      show: false,
      topSellProduct: [],
      cartComponentKey: 0,
      wishlistKey: 2,
      topSellLimit: 6,
      topSellViewTitle: "Produits les plus vendu"
    };
  },
  async mounted() {
    this.topSellProduct = (
      await ProductsService.topSellProduct(this.topSellLimit)
    ).data;
    this.forceRerender();
    console.log(this.topSellProduct)
  },
  methods: {
    forceRerender() {
      this.cartComponentKey += 1;
      this.wishlistKey += 1;
    }
  },
  computed: {}
};
</script>

<style lang="scss" scoped>
body {
  margin: 0;
  font-family: Roboto,-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  font-size: .8125rem;
  font-weight: 400;
  line-height: 1.5385;
  color: #333;
  text-align: left;
  background-color: #2196F3;
}

.mt-50{

  margin-top: 50px;
}

.mb-50{

  margin-bottom: 50px;
}



.card {
  position: relative;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #fff;
  background-clip: border-box;
  border: 1px solid rgba(0,0,0,.125);
  border-radius: .1875rem;
}

.card-img-actions {
  position: relative;
}
.card-body {
  -ms-flex: 1 1 auto;
  flex: 1 1 auto;
  padding: 1.25rem;
  text-align: center;
}

.card-img{

  width: 350px;
}

.star{
      color: red;
}

.bg-cart {
  background-color:orange;
  color:#fff;
}

.bg-cart:hover {
  
  color:#fff;
}

.bg-buy {
  background-color:green;
  color:#fff;
  padding-right: 29px;
}
.bg-buy:hover {
  
  color:#fff;
}

a{

  text-decoration: none !important;
}
</style>

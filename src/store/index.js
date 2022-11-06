import Vue from 'vue'
import Vuex from 'vuex'
import client from "../store/modules/client";
import product from "../store/modules/produits";
import Category from "../store/modules/categoryListe";
import SubCategory from "../store/modules/subCategoryListe";
import newproduct from "../store/modules/NewAddProduits";
import topSellPro from "../store/modules/TopSellProduct";
import { CartModule } from "./Cart.js";
import { ReviewModule } from "./Review.js";
import { CompanyModule } from "./Company.js";
import { CategoryModule } from "./Category.js";
import { ProductsModule } from "./Products.js";
import { CheckoutModule } from "./Checkout.js";
import { WishlistModule } from "./Wishlist.js";
import { CurrentUserModule } from "./CurrentUser.js";
import createPersistedState from "vuex-persistedstate";



Vue.use(Vuex)

export default new Vuex.Store({
  strict: true,
  plugins: [createPersistedState()],
  state: {
  },
  getters: {
  },
  mutations: {
  },
  actions: {
  },
  modules: {
    client,
    product,
    Category,
    SubCategory,
    newproduct,
    topSellPro,
    Cart: CartModule,
    Review: ReviewModule,
    Company: CompanyModule,
    Category: CategoryModule,
    Products: ProductsModule,
    Checkout: CheckoutModule,
    Wishlist: WishlistModule,
    CurrentUser: CurrentUserModule

  }
})






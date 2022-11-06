<template>
  <div>
    <v-container>
      <div class="row">
        <div
         class="col-md-3 col-sm-3 col-xs-12"
        >
          <v-card outlined>
            <v-card-title>Filters</v-card-title>
            <v-divider></v-divider>
            <template>
              <v-treeview :items="items" :open="[1]" :active="[5]" :selected-color="'#fff'" activatable open-on-click dense></v-treeview>
            </template>
            <v-divider></v-divider>
            <v-card-title>Price</v-card-title>
            <v-range-slider
              v-model="range"
              :max="max"
              :min="min"
              :height="10"
              class="align-center"
              dense
            ></v-range-slider>
            <v-row class="pa-2" dense>
              <v-col cols="12" sm="5">
                <v-text-field
                  :value="range[0]"
                  label="Min"
                  outlined
                  dense
                  @change="$set(range, 0, $event)"
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="2">
                <p class="pt-2 text-center">TO</p>
              </v-col>
              <v-col cols="12" sm="5">
                <v-text-field
                  :value="range[1]"
                  label="Max"
                  outlined
                  dense
                  @change="$set(range, 1, $event)"
                ></v-text-field>
              </v-col>
            </v-row>
            <v-divider></v-divider>
            <v-card-title class="pb-0">Customer Rating</v-card-title>
            <v-container class="pt-0"  fluid>
              <v-checkbox append-icon="mdi-star" label="4 & above" hide-details dense></v-checkbox>
              <v-checkbox append-icon="mdi-star" label="3 & above" hide-details dense></v-checkbox>
              <v-checkbox append-icon="mdi-star" label="2 & above" hide-details dense></v-checkbox>
              <v-checkbox append-icon="mdi-star" label="1 & above" hide-details dense></v-checkbox>
            </v-container>
            <v-divider></v-divider>
            <v-card-title class="pb-0">Size</v-card-title>
            <v-container class="pt-0" fluid>
              <v-checkbox  label="XS" hide-details dense></v-checkbox>
              <v-checkbox  label="S" hide-details dense></v-checkbox>
              <v-checkbox  label="M" hide-details dense></v-checkbox>
              <v-checkbox  label="L" hide-details dense></v-checkbox>
              <v-checkbox  label="XL" hide-details dense></v-checkbox>
              <v-checkbox  label="XXL" hide-details dense></v-checkbox>
              <v-checkbox  label="XXXL" hide-details dense></v-checkbox>
            </v-container>

          </v-card>
        </div>
        <div
          class="col-md-9 col-sm-9 col-xs-12"
        >

          <v-breadcrumbs class="pb-0" :items="breadcrums"></v-breadcrumbs>

          <v-row dense>
            <v-col cols="12" sm="8" class="pl-6 pt-6">
              <small>Showing 1-12 of 200 products</small>
            </v-col>
            <v-col cols="12" sm="4">
              <v-select class="pa-0" v-model="select" :items="options" style="margin-bottom: -20px;" outlined dense></v-select>
            </v-col>
          </v-row>

          <v-divider></v-divider>

          <div class="row text-center">
            <div class="col-md-3 col-sm-6 col-xs-12" v-for="(item, index) in historyList" :key="index" style="margin-top: 10px;">
              <v-hover v-slot:default="{ hover }">
                <v-card
                  class="mx-auto"
                  color="grey lighten-4"
                  max-width="600"
                >
                  <v-img
                    class="white--text align-end"
                    :aspect-ratio="16/9"
                    height="200px"
                    src="https://images.unsplash.com/photo-1548681528-6a5c45b66b42?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE0NTg5fQ"
                  >
                    <v-card-title>{{item.id}} </v-card-title>
                    <v-expand-transition>
                      <div
                        v-if="hover"
                        class="d-flex transition-fast-in-fast-out white darken-2 v-card--reveal display-3 white--text"
                        style="height: 100%;"
                      >
                        <v-btn v-if="hover" class="" outlined @click="redirection(item.id)">VIEW</v-btn>
                      </div>

                    </v-expand-transition>
                  </v-img>
                  <v-card-text class="text--primary">
                    <div><a href="/product" style="text-decoration: none">{{item.title}}</a></div>
                    <div>$ {{item.id}}</div>
                  </v-card-text>
                </v-card>
              </v-hover>
            </div>
          </div>
          <div class="text-center mt-12">
            <!-- <v-pagination
              v-model="page"
              :length="6"
            ></v-pagination> -->
            <v-pagination class="pagination mb-2" v-model="page" :length="pages" @input="updatePage"></v-pagination>


          </div>
        </div>
      </div>
    </v-container>
  </div>
</template>
<style>
  .v-card--reveal {
    align-items: center;
    bottom: 0;
    justify-content: center;
    opacity: .8;
    position: absolute;
    width: 100%;
  }
</style>


<script>
import { mapActions, mapGetters } from "vuex";

    export default {
        data: () => ({



          range: [0, 10000],
            select:'Popularity',
            options: [
                'Default',
                'Popularity',
                'Relevance',
                'Price: Low to High',
                'Price: High to Low',
            ],
            page:1,
            breadcrums: [
                {
                    text: 'Home',
                    disabled: false,
                    href: 'breadcrumbs_home',
                },
                {
                    text: 'Clothing',
                    disabled: false,
                    href: 'breadcrumbs_clothing',
                },
                {
                    text: 'T-Shirts',
                    disabled: true,
                    href: 'breadcrumbs_shirts',
                },
            ],
            min:0,
            max:10000,






          items: [
          { title: 'Dashboard', icon: 'mdi-view-dashboard' },
          { title: 'Photos', icon: 'mdi-image' },
          { title: 'About', icon: 'mdi-help-box' },
        ],
        right: null,






            range: [0, 10000],
            select:'',
            // options: [
            //     'Default',
            //     'Popularity',
            //     'Relevance',
            //     'Price: Low to High',
            //     'Price: High to Low',
            // ],
            page:1,
            breadcrums: [
                {
                    text: 'Accueil',
                    disabled: false,
                    href: '/',
                },
                {
                    text: 'Oiseaux',
                    disabled: false,
                    href: '/category-vollaile',
                },
            ],
            min:0,
            max:10000,
            items: [
                {
                    id: 2,
                    name: 'Shoes',
                    href: '/',
                    children: [
                        { id: 2, name: 'Casuals' },
                        { id: 3, name: 'Formals' },
                        { id: 4, name: 'Sneakers'},
                    ],
                },
                {
                    id: 1,
                    name: 'Clothing',
                    children: [
                        { id: 5, name: 'Shirts' },
                        { id: 6, name: 'Tops' },
                        { id: 7, name: 'Tunics' },
                        { id: 8, name: 'Bodysuit' },
                    ],
                }
            ],
            products: [
                {
                    id:1,
                    name:'BLACK TEE',
                    type:'Jackets',
                    price:'18.00',
                    src:require('../assets/img/shop/1.jpg')
                },
            ],
            listCategory: [],
            listCategoryTmp: [],
            CategoryId: 6,
            listSubCategoryTmp: [],
            listSubCategory: [],
            selectSubCatID: { state: 'Florida', abbr: 'FL' },
            SubCategoryId: [],
            ListSelectTmp: [null],
            listVraiCategory: [],

            page: 1,
			    pageSize: 2,
			list: [],
			listCount: 0,
			historyList: [],
      listCategory: [],
      nbr: ''
    }),

    watch: {
      listeProduits() {
        this.list = this.listeProduits
      if(this.listeProduits) {

        this.listCategory = this.listeProduits
        console.log('-----------LISTE DE CATEGORIE-----------');
        console.log(this.listCategory);
        console.log(this.listCategory.length);
          this.nbr = this.listCategory.length,






          this.listCategoryTmp = this.listCategory.filter(element => element.CategoryId == 6)
          console.log("miouk nom filtree =====> ",this.listCategoryTmp);
      }
      },

      subCategoryList() {
      if(this.subCategoryList) {
        console.log('le guetter marche bien');
        this.listSubCategory = this.subCategoryList
        console.log(this.listSubCategory);
        this.listSubCategoryTmp = this.listSubCategory.filter(element => element.CategoryId == 6)
        console.log(this.listSubCategoryTmp);
      }
    },

    categoryList() {
      if(this.categoryList) {
        this.listVraiCategory = this.categoryList
        console.log('-----------LISTE VRAI CATEGORIE-----------');
        console.log(this.listVraiCategory);
      }
    },
  },

  mounted() {
    let _this = this;
		_this.initPage();
		_this.updatePage(_this.page);
  },

  created() {
    this.GET_ALL_PRODUIT();
    this.getSubCategoryList();
    this.getCategoryList();
    // const userdetails = JSON.parse(localStorage.getItem("users"));
    // this.UserId = userdetails.user_id;

    // let _this = this;
		// _this.initPage();
		// _this.updatePage(_this.page);
  },

  computed: {
      ...mapGetters(["listeProduits", "categoryList", "subCategoryList"]),

      pages() {
			let _this = this;
			if (_this.pageSize == null || _this.listCount == null) return 0;
			return Math.ceil(_this.listCount / _this.pageSize);
		}
    },

  methods: {
    ...mapActions(["GET_ALL_PRODUIT", "getCategoryList","getSubCategoryList"]),


    selectCategory(event) {
          this.CategoryId = event;
          console.log("l'id categorie est " + event);
          this.listSubCategoryTmp = this.listSubCategory.filter(element => element.CategoryId == event)
          console.log("miouk nom filtree =====> ",this.listSubCategoryTmp);
    },

    selectSubCategory(event) {
      this.SubCategoryId = event;
      console.log("l'id sous categorie est " + event);
      this.ListSelectTmp = this.listCategoryTmp.filter(element => element.SubCategoryId == event)
      this.listCategoryTmp = this.ListSelectTmp
      console.log(this.ListSelectTmp);
    },
    initPage: function() {
			let _this = this;
			_this.listCount = 24;
			if (_this.listCount < _this.pageSize) {
				_this.historyList = _this.listCategory;

			} else {
				_this.historyList = _this.listCategory.slice(0, _this.pageSize);
			}
		},
		updatePage: function(pageIndex) {
			let _this = this;
			let _start = (pageIndex - 1) * _this.pageSize;
			let _end = pageIndex * _this.pageSize;
			_this.historyList = _this.list.slice(_start, _end);
			_this.page = pageIndex;
		},

    redirection(produit) {
          const path = `/product/` + produit;
          if (this.$route.path !== path)
          this.$router.push({ path, params: { id: produit } });
        },
  },
}
</script>

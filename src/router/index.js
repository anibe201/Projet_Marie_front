import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Shop from '@/components/Shop'
import Product from '@/components/Product'
import Blog from '@/components/Blog'
import Post from '@/components/Post'
import Cart from '@/components/Cart'
import Layout from '@/components/Layout'
import Register from '@/components/Register'
import Login from '@/components/Login'
import PublicationOeuf from '@/components/PublicationOeuf'
import ModificationOeuf from '@/components/ModificationOeuf'
import ConfirmRegister from '@/components/ConfirmRegister'
import CategoryVollaile from '@/components/Categories/CategoryVollaile'
import Dashboard from "../views/admin/admin_dashboard.vue";
import AddPoduct from "../views/admin/AddProduct.vue";

import produits from "../views/admin/admin_products.vue";
import commandes from "../views/admin/admin_commandes.vue";
import profil_utilisateur from "../views/admin/admin_profil_utilisateur.vue";
import profil_administrateur from "../views/admin/admin_profil_administrateur.vue";
import reglage from "../views/admin/admin_reglage.vue";
import details_produit from "../views/admin/admin_details_produit.vue";
// import commande_update from "../views/Commande_update.vue"
import modifier from "../views/admin/admin_update_prod.vue"
// import detail_commande from "../views/admin/admin_details_cmde.vue"


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: Layout,
      children:[
        {
          path:'/',
          component:Home,
          name:'Home'
        },
        {
          path:'/shop',
          component:Shop,
          name:'Shop'
        },
        {
          path:'/product/:id',
          component:Product,
          name:'Product'
        },
        {
          path:'/blog',
          component:Blog,
          name:'Blog'
        },
        {
          path:'/post',
          component:Post,
          name:'Post'
        },
        {
          path:'/cart',
          component:Cart,
          name:'Cart'
        },
        {
          path:'/register',
          component:Register,
          name:'Register'
        },
        {
          path:'/login',
          component:Login,
          name:'Login'
        },
        {
          path:'/publicationoeuf',
          component:PublicationOeuf,
          name:'PublicationOeuf'
        },
        {
          path:'/modificationoeuf',
          component:ModificationOeuf,
          name:'ModificationOeuf'
        },
        {
          path:'/confirmregister',
          component:ConfirmRegister,
          name:'ConfirmRegister'
        },
        {
          path:'/confirmregister',
          component:ConfirmRegister,
          name:'ConfirmRegister'
        },
        {
          path:'/category-vollaile',
          component:CategoryVollaile,
          name:'CategoryVollaile'
        },
      ]

    },
    {
      path: "/index_admin",
      name: "Index_admin",
      component: () =>
        import(/* webpackChunkName: "inscription" */ "../views/admin/Index_admin.vue"),
      children: [
        {
          // UserProfile will be rendered inside User's <router-view>
          // when /user/:id/profile is matched
          path: '',
          component: Dashboard,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: 'produits',
          component: produits,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: 'commandes',
          component: commandes,
        },
        // {
        //   // UserPosts will be rendered inside User's <router-view>
        //   // when /user/:id/posts is matched
        //   path: '/detail_commandes/:id',
        //   component: detail_commande,
        // },
        // {
        //   // UserPosts will be rendered inside User's <router-view>
        //   // when /user/:id/posts is matched
        //   path: 'commandes',
        //   component: commandes,
        // },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: 'profil_utilisateur',
          component: profil_utilisateur,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: 'profil_administrateur',
          component: profil_administrateur,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: 'reglage',
          component: reglage,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: '/details_produit/:id',
          component: details_produit,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: '/modifier/:id',
          component: modifier,
        },
        {
          // UserPosts will be rendered inside User's <router-view>
          // when /user/:id/posts is matched
          path: 'add-product',
          component: AddPoduct,
        },
      ],
    },
  ],
    mode:'history'
},

  )

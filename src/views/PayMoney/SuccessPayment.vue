
<template>
  <div>
    <TopHeader></TopHeader>
    <b-container class="mt-5">
      <b-row align-h="center">
        <b-col cols="6" class="text-center">
          <b-card
            border-variant="success"
            header="Succès"
            header-bg-variant="success"
            header-text-variant="white"
            align="center"
          >
            <b-button size="lg" disabled variant="success">
              <b-icon icon="check" scale="3" />
            </b-button>
            <h1 class="mt-4">Commande éffectuée!</h1>
            <h6>Merci pour votre fidélité</h6>
            <h6>Votre livraison sera effectué dans un delai de deux jours</h6>
            <h6><strong> Un message vous ai été envoyé sur votre email. Ce message contient votre code de commande à présenter au livreur lors de la livraison</strong></h6>

            <b-card-footer class="mt-4"> oeuf-dor.com </b-card-footer>
          </b-card>
        </b-col>
      </b-row>


      <template style="margin-top: 70px">
        <v-row justify="center">
          <v-expansion-panels popout>
            <v-expansion-panel>
              <v-expansion-panel-header><h4 class="text-center">Voir et imprimer la facture de commande</h4></v-expansion-panel-header>
              <v-expansion-panel-content>
            <b-button style="margin-top: 20px;" @click="printDocument()">Générer une facture</b-button>
                <div class="App container mt-5">
                  <!-- <button class="btn btn-primary" @click="printDocument()">Export To PDF</button> -->
                <div id="divToPrint">
                     <div class="row d-flex justify-content-center">
                  <div class="col-md-8">
                      <div class="card">
                          <div class="d-flex flex-row p-2">
                              <div class="d-flex flex-column"> <span class="font-weight-bold">FACTURE DE COMMANDE OEUF</span> <small>INV-001</small> </div>
                          <hr />
                              
                          </div>
                          <div class="address p-2">
                           <table class="table table-borderless">
                               <tbody>
                                   <tr class="add">
                                       <td>Détails du client</td>
                                   </tr>
                                   <tr class="content">
                                       <!-- <img src="http://localhost:8084/public/user-image/default-man.png" alt="" /> -->
                                       <td> 
                                           Nom : {{ factureInfo.infoUser.lastName }} <br /> 
                                           Prénom : {{ factureInfo.infoUser.firstName }} <br /> 
                                           Contact : +225 01 40 99 04 99 <br /> 
                                           Email : {{ factureInfo.infoUser.email }} <br /> 
                                           Numero de commande : 01ODO-UPB <br /> 
                                       </td>
                                   </tr>
                               </tbody>
                               <!-- {{ factureInfo }} -->
                           </table>
                       </div>
                          <hr />
                          <div class="table-responsive p-2">
                              <table class="table table-borderless">
                                  <tbody>
                                      <tr class="add">
                                          <td>Date</td>
                                          <td></td>
                                      </tr>
                                      <tr class="content">
                                          <td class="font-weight-bold">De commande  <br />De livraison</td>
                                          <td class="font-weight-bold">Samedi 12 novmbre 2022 <br /> Lundi 14 novmbre 2022</td>
                                      </tr>
                                  </tbody>
                              </table>
                          </div>
                          <hr />
                          <div class="products p-2">
                              <table class="table table-borderless">
                                  <tbody>
                                      <tr class="add">
                                          <td class="text-center">Quantité</td>
                                          <td class="text-center">Désignation</td>
                                          <td class="text-center">Prix unitaire (Fcfa)</td>
                                          <td class="text-center">Montant HT (Fcfa)</td>
                                          <td class="text-center"></td>
                                      </tr>
                                      <tr class="content">
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td class="text-center">00,00</td>
                                      </tr>
                                      <tr class="content">
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td class="text-center">00,00</td>
                                      </tr>
                                      <tr class="content">
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td class="text-center">00,00</td>
                                      </tr>
                                  </tbody>
                              </table>
                          </div>
                          <hr />
                          <div class="products p-2">
                              <table class="table table-borderless" border="1">
                                  <tbody>
                                      <tr class="add">
                                          <td></td>
                                          <td>Totale HT (Fcfa)</td>
                                          <td>TVA</td>
                                          <td class="text-center">Total (Fcfa)</td>
                                      </tr>
                                      <tr class="content">
                                          <td></td>
                                          <td></td>
                                          <td></td>
                                          <td class="text-center">00,00</td>
                                      </tr>
                                  </tbody>
                              </table>
                          </div>
                          <!-- <hr />
                          <div class="address p-2">
                              <table class="table table-borderless">
                                  <tbody>
                                      <tr class="add">
                                          <td>Bank Details</td>
                                      </tr>
                                      <tr class="content">
                                          <td> Bank Name : ADS BANK <br /> Swift Code : 00220022 <br /> Account Holder : Jassa Pepper <br /> Account Number : 6953PO789 <br /> </td>
                                      </tr>
                                  </tbody>
                              </table>
                          </div> -->
                      </div>
                  </div>
              
              
              
              
              
                 </div>
                 
                </div>
             </div>
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-expansion-panels>
        </v-row>
      </template>




      <div style="margin-top: 50px;">
        <!-- <h1>Test heading </h1> -->
        <div class="card">
        <div class="card-header">
          Information
        </div>
        <div class="card-body">
          <h5 class="card-title">Vérifier toujour qu'il s'agit bien de votre produit</h5>
          <p class="card-text">Si ce n'est pas le cas, faite le savoir au livreur</p>
          <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
        </div>
      </div>
        <div class="card">
        <div class="card-header">
          FAQ
        </div>
        <div class="card-body">
          <h5 class="card-title">Quel est la condition de retour</h5>
          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla dolore asperiores, ipsam delectus at autem aperiam praesentium temporibus maiores impedit</p>
          <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
          <h5 class="card-title">Que faire lorsque la livraison accuse un retard</h5>
          <p class="card-text">Quidem nulla dolore asperiores, ipsam delectus at autem aperiam praesentium temporibus maiores impedit</p>

        </div>
      </div>
        <!-- <button class="btn btn-danger" @click="generatePdf">generate PDF</button> -->
      </div>
      
      


    </b-container>
    <Footer class="mt-5" />
  </div>
</template>

<script>
import TopHeader from "@/components/Common/TopHeader.vue";
import Footer from "@/components/Common/Footer.vue";
import { jsPDF } from "jspdf";
 import "bootstrap/dist/css/bootstrap.min.css";
 import pdfMake from 'pdfmake';
 import pdfFonts from 'pdfmake/build/vfs_fonts';
 import htmlToPdfmake from 'html-to-pdfmake';
// import CheckoutService from "@/services/CheckoutService.js";
// import OrderService from "@/services/OrderService.js";
// import OrderItemService from "@/services/OrderItemService.js";
// import ProductsService from "@/services/ProductsService.js";
export default {
  name: "SuccessPayment",
  components: {
    TopHeader,
    Footer
  },
  data() {
    return {
      // order: {},
      // session: {},
      // validSession: false
      factureInfo: null,

      heading: "Facture de  commande Oeuf d'or"
    };
  },


  mounted() {
   
  },
  created() {
    this.factureInfo = JSON.parse(localStorage.getItem("elmtFacture"));
    console.log(this.factureInfo);
  },
  // async mounted() {
  //   // const sessionId = this.$route.query.id;
  //   const sessionId = 123456789
  //   console.log(sessionId);
    
  //   var previousOrder;
  //   try {
  //     previousOrder = (await OrderService.getOrderBySessionId(sessionId)).data;
  //   } catch (error) {
  //     console.log(error.response.data.error);
  //   }
  //   if (previousOrder) return;
  //   this.$store.dispatch("Cart/clearCart");
  //   try {
  //     this.session = (
  //       await CheckoutService.retrieveCheckoutSession(sessionId)
  //     ).data;
  //     this.validSession = Object.keys(this.session).length != 0;
  //   } catch (error) {
  //     console.log(error.response.data.error);
  //   }
  //   if (!this.validSession) return;
  //   const lineItems = this.session.line_items.data;
  //   // const shipCost = lineItems[lineItems.length - 1].amount_total;
  //   const shipCost = 0;
  //   try {
  //     this.order = (
  //       await OrderService.createOrder({
  //         name: this.session.metadata.customerName,
  //         phoneNo: this.session.metadata.customerPhoneNo,
  //         email: this.session.customer_email,
  //         address: this.session.metadata.shippingAddress,
  //         status: "paid",
  //         variant: "dark",
  //         checkoutSessionId: sessionId,
  //         productCost: (this.session.amount_total - shipCost) / 100,
  //         currency: this.session.currency.toUpperCase(),
  //         // shippingCost: shipCost / 100
  //         shippingCost: 0
  //       })
  //     ).data;
  //   } catch (error) {
  //     console.log(error.response.data.error);
  //   }

  //   var i;
  //   for (i = 0; i < lineItems.length - 1; i++) {
  //     const productId = parseInt(lineItems[i].description);
  //     try {
  //       await OrderItemService.createOrderItem({
  //         quantity: lineItems[i].quantity,
  //         ProductId: productId,
  //         OrderId: this.order.id
  //       });
  //     } catch (error) {
  //       console.log(error.response.data.error);
  //     }
  //     var lineproduct;
  //     try {
  //       lineproduct = (await ProductsService.getProductSales(productId)).data;
  //     } catch (error) {
  //       console.log(error.response.data.error);
  //     }
  //     try {
  //       await ProductsService.updateProduct({
  //         id: productId,
  //         sales: lineproduct.sales + lineItems[i].quantity
  //       });
  //     } catch (error) {
  //       console.log(error.response.data.error);
  //     }
  //   }
  // },
  
  methods: {
    printDocument() {
           //get table html
           const pdfTable = document.getElementById('divToPrint');
           //html to pdf format
           var html = htmlToPdfmake(pdfTable.innerHTML);
           const documentDefinition = { content: html };
           pdfMake.vfs = pdfFonts.pdfMake.vfs;
           pdfMake.createPdf(documentDefinition).open();
           localStorage.removeItem("Cart");

     }
  },
  computed: {}
};
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Maven+Pro&display=swap');

body {
    font-family: 'Maven Pro', sans-serif;
    background-color: #f12369
}

hr {
    color: #0000004f;
    margin-top: 5px;
    margin-bottom: 5px
}

.add td {
    color: #c5c4c4;
    text-transform: uppercase;
    font-size: 12px
}

.content {
    font-size: 14px
}
</style>

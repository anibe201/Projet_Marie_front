
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
            <b-button style="margin-top: 20px;" @click="genererFacture()">Générer une facture</b-button>

            <b-card-footer class="mt-4"> oeuf-dor.com </b-card-footer>
          </b-card>
        </b-col>
      </b-row>


      <div id="app" ref="testHtml">
        <h1>Test heading </h1>
        <div class="card">
        <div class="card-header">
          Featured
        </div>
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
        <div class="card">
        <div class="card-header">
          Featured
        </div>
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
        <button class="btn btn-danger" @click="generatePdf">generate PDF</button>
      </div>
      
      


    </b-container>
    <Footer class="mt-5" />
  </div>
</template>

<script>
import TopHeader from "@/components/Common/TopHeader.vue";
import Footer from "@/components/Common/Footer.vue";
import { jsPDF } from "jspdf";
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
      heading: "Facture de  commande Oeuf d'or"
    };
  },


  mounted() {
   
  },
  created() {
    const factureInfo = JSON.parse(localStorage.getItem("elmtFacture"));
    console.log(factureInfo);
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
    genererFacture() {
      console.log("Facture généré");
// Landscape export, 2×4 inches
const doc = new jsPDF();
doc.text("Hello world!", 10, 10);
doc.save("a4.pdf"); // will save the file in the current working directory

    },
    
    generatePdf(){
       var doc = new jsPDF('p', 'pt', 'A4');
      
      doc.fromHTML(this.$refs.testHtml);
      
      doc.save('test.pdf');
    }

  },
  computed: {}
};
</script>

<style lang="scss" scoped></style>

<template>
 
  <div class="App container mt-5">
       <button class="btn btn-primary" @click="printDocument()">Export To PDF</button>
     <div id="divToPrint">
          <div class="row d-flex justify-content-center">
       <div class="col-md-8">
           <div class="card">
               <div class="d-flex flex-row p-2">
                   <div class="d-flex flex-column"> <span class="font-weight-bold">FACTURE DE COMMANDE OEUF</span> <small>INV-001</small> </div>
                   
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
                            </td>
                        </tr>
                    </tbody>
                    {{ factureInfo }}
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
                               <td class="text-center">Prix unitaire</td>
                               <td class="text-center">Montant HT (Fcfa)</td>
                               <td class="text-center"></td>
                           </tr>
                           <tr class="content">
                               <td>Website Redesign</td>
                               <td>Website Redesign</td>
                               <td>15</td>
                               <td>$1,500</td>
                               <td class="text-center">$22,500</td>
                           </tr>
                           <tr class="content">
                               <td>Logo & Identity</td>
                               <td>Logo & Identity</td>
                               <td>10</td>
                               <td>$1,500</td>
                               <td class="text-center">$15,000</td>
                           </tr>
                           <tr class="content">
                               <td>Marketing Collateral</td>
                               <td>Marketing Collateral</td>
                               <td>3</td>
                               <td>$1,500</td>
                               <td class="text-center">$4,500</td>
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
                               <td>$40,000</td>
                               <td>18 %</td>
                               <td class="text-center">$42,500</td>
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
 </template>
 
 <script>
 
 //importing bootstrap 5 and pdf maker Modules
 import "bootstrap/dist/css/bootstrap.min.css";
 import pdfMake from 'pdfmake';
 import pdfFonts from 'pdfmake/build/vfs_fonts';
 import htmlToPdfmake from 'html-to-pdfmake';
 export default {
    data() {
    return {
        factureInfo: null
    };
  },
  
  created() {
    this.factureInfo = JSON.parse(localStorage.getItem("elmtFacture"));
    console.log(factureInfo);
  },
   
     methods: {
        printDocument() {
      
          
           //get table html
           const pdfTable = document.getElementById('divToPrint');
           //html to pdf format
           var html = htmlToPdfmake(pdfTable.innerHTML);
         
           const documentDefinition = { content: html };
           pdfMake.vfs = pdfFonts.pdfMake.vfs;
           pdfMake.createPdf(documentDefinition).open();
         
     }
 }  
 }
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
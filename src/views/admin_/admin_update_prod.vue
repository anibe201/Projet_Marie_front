<template>
    <div class="dashboard">
     <v-subheader class="d-flex justify-space-between align-center">
             <h3>Modifier le produit N {{ affiche.produit }}</h3>
             <v-btn color="success" class="rouded-lg">
                 Tous les produits
             </v-btn>
     </v-subheader>
     <v-card flat class="pa-3 mt-2" >

        <v-alert
          dense
          type="info"
        >
          <strong>Modifier de l'annonce </strong>
        </v-alert>
        <v-card-text>
          <v-form class="multi-col-validation mt-6">
            <v-row>
                <div class="row">
                    <!-- <div class="col-sm-12">
                      <div>
                        <b-button v-b-modal.modal-prevent-closing  @click="All_liste_Produit()">+ Deposer une annonce</b-button >
                        <b-modal id="modal-prevent-closing" ref="modal" title="Formulaire d'ajout d'un produit" > -->
            
            
                          <b-form @reset="onReset">
                            <div class="row">
              <!--------------------------------------------------------------------------------------------------------------->
                              <div class="col-6">
                                <b-form-group id="input-group-3" label="Type produits:" label-for="input-3" >
                                  <select class="form-select" v-model="form.type_produit" @change="select_type_prod(form.type_produit)" aria-label="Default select example">
                                    <option :value="type_produit.libelle" v-for="type_produit in liste_type_produit">{{ type_produit.libelle }}</option>
                                 </select>
                                </b-form-group>
                              </div>
              <!--------------------------------------------------------------------------------------------------------------->
                              <div class="col-6">
                                <b-form-group id="input-group-2" label="Nom du produit :"  label-for="input-2" >
                                 <select class="form-select" v-model="form.nom_produit" @change="select_name_prod(form.nom_produit)" aria-label="Default select example">
                                   <option :value="nom_produits.Nom" v-for="nom_produits in liste_nom_prod_temp"> {{ nom_produits.Nom }}</option>
                                   <!-- <option :value="nom_produits.id" v-for="nom_produits in liste_nom_produit"> {{ nom_produits.Nom }}</option> -->
                                 </select>
                                </b-form-group>
                              </div>                
              <!--------------------------------------------------------------------------------------------------------------->
                            </div>
                            <div class="row">
              <!--------------------------------------------------------------------------------------------------------------->
                              <div class="col-6">
                                <b-form-group id="input-group-3" label="Variété du produit :" label-for="input-3" >
                                 <select class="form-select" v-model="form.variete" aria-label="Default select example">
                                   <!-- <option selected></option> -->
                                   <option :value="nom_varietes.id" v-for="nom_varietes in liste_varite_temp"> {{ nom_varietes.Nom_variete }}</option>
                                 </select>
                                </b-form-group>
                              </div>
              <!--------------------------------------------------------------------------------------------------------------->
                              <div class="col-6">
                                <b-form-group id="input-group-3" label="Type de vente:" label-for="input-3" >
                                  <select class="form-select" v-model="form.type_vente" aria-label="Default select example">
                                   <option value="EN_GROS" >  EN-GROS </option>
                                   <option value=" DEMI-GROS" disabled>  DEMI-GROS </option>
                                   <option value="EN_DETAIL" >  DETAIL </option>
                                 </select>
                                </b-form-group>
                              </div>
              <!--------------------------------------------------------------------------------------------------------------->
                            </div>
                            <div class="row">
              <!--------------------------------------------------------------------------------------------------------------->
                              <div class="col-6">
                                <b-form-group id="input-group-2" label="Quantité en stock :" label-for="input-2" >
                                  <b-form-input id="input-4" v-model="form.quantity" placeholder="Quelle est la quantité de votre produit" required ></b-form-input>
                                </b-form-group>
                              </div>
              <!--------------------------------------------------------------------------------------------------------------->
                              <div class="col-6">
                                <b-form-group id="input-group-2" label="Unité de mésure :" label-for="input-2" >
                                  <select class="form-select" v-model="form.unite_de_mesure" aria-label="Default select example">
                                   <option value="Tonne(t)">  Tonne (T) </option>
                                   <option value="Kilogramme(Kg)" >  Kilogramme (Kg) </option>
                                   <option value="Gramme (g)" disabled>  Gramme (g) </option>
                                   <option value="miligramme (Mg)" disabled>  miligramme (Mg) </option>
                                   <option value="Metre_Cube" >  Metre Cube </option>
                                   <option value="Litre(l)">  Litre (L) </option>
                                   <option value="Millilitre (Ml)" disabled>  Millilitre (Ml) </option>
                                 </select>
                                </b-form-group>
                              </div>
              <!--------------------------------------------------------------------------------------------------------------->
                            </div>
                            <div class="row">
                              <div class="col-8">
                                <b-form-group id="input-group-4" label="Prix :" label-for="input-4" >
                                <b-form-input id="input-2" v-model="form.price" placeholder="Prix du propuit" required ></b-form-input></b-form-group>
                              </div>
                              <div class="col-4">
                                <b-form-group id="input-group-4" label="Devise :" label-for="input-4" >
                                  <b-form-input id="input-2" disabled="" placeholder="        FCFA" required ></b-form-input>
                                </b-form-group>
                              </div>                
                            </div>
                            <b-form-group id="input-group-1" label="Lieu de Provenance" label-for="input-1" >
                              <b-form-input id="input-1" v-model="form.lieu" placeholder="Quel est le lieu de provenance" required >
                              </b-form-input>
                            </b-form-group>
                            <b-form-group id="input-group-5" label="Description :" label-for="input-5" >
                              <b-form-textarea id="textarea-default" v-model="form.description" placeholder="Que devons nous savoir sur votre produit" >
                              </b-form-textarea>
                            </b-form-group>
                            <b-form-group id="input-group-6" label="Image :" label-for="input-6" >
                            </b-form-group>
                            <input type="file" name="publication_prod" id="publication_prod" ref="publication_prod" @change="onFileCharge('publication_prod')" />
                            <br /><br />
                            <!-- <b-button type="button" variant="primary"  style="margin-right: 5px" > Valider</b-button > -->
                            <!-- <b-button type="reset" variant="danger">Vider</b-button> -->
                          </b-form>
                        <!-- </b-modal>
                      </div> -->
                    <!-- </div> -->
                  </div>
    
              <v-col cols="12" md="12" >
                <v-card-text class="d-flex">
    
                  <v-avatar rounded size="120"  class="me-6" >
                    <!-- <v-img src="../../assets/avatar/"></v-img> -->
                  </v-avatar>
    
       
                  <div>
                    <v-btn color="primary" class="me-3 mt-5" @click="$refs.refInputEl.click()" >
                      <v-icon class="d-sm-none">
                        <!-- {{ icons.mdiCloudUploadOutline }}  -->
                      </v-icon>
                      <span class="d-none d-sm-block">Charger une nouvelle photo</span>
                    </v-btn>
    
                    <input ref="refInputEl" type="file" accept=".jpeg,.png,.jpg,GIF" :hidden="true" />
    
                    <v-btn color="error" outlined  class="mt-5" >
                      Supprimer
                    </v-btn>
                    <p class="text-sm mt-5">
                      Seulement les images de type JPG, GIF or PNG.
                    </p>
                  </div>
                </v-card-text>
              </v-col>
              <v-divider></v-divider>
              <v-alert
              type="success"
            >Informations personnelles du vendeur</v-alert>
    <v-spacer></v-spacer>
            <v-col
            cols="12"
            md="10"
          >
            <v-form>
              <v-row>

                <v-col
                cols="12"
                md="3"
              >
                <label for="emailHorizontalIcons">ID</label>
              </v-col>
  
              <v-col
                cols="12"
                md="9"
              >
                <v-text-field
                disabled
                  id="emailHorizontalIcons"
                  outlined
                  dense
                  placeholder=""
                  hide-details
                ></v-text-field>
              </v-col>
                <v-col
                  cols="12"
                  md="3"
                >
                  <label for="firstnameHorizontalIcons">Nom</label>
                </v-col>
    
                <v-col
                  cols="12"
                  md="9"
                >
                  <v-text-field
                  disabled
                    id="firstnameHorizontalIcons"
                    outlined
                    dense
                    value="Vianney Anibe"
                    hide-details
                  ></v-text-field>
                </v-col>
    
                <v-col
                  cols="12"
                  md="3"
                >
                  <label for="mobileHorizontalIcons">Mobile</label>
                </v-col>
    
                <v-col
                  cols="12"
                  md="9"
                >
                  <v-text-field
                  disabled
                    id="mobileHorizontalIcons"
                    type="number"
                    outlined
                    dense
                    placeholder="+225 01 40 99 04 99"
                    hide-details
                  ></v-text-field>
                </v-col>
    
              </v-row>
            </v-form>
          </v-col>
          <v-col
          cols="12"
          md="2"
        >
      </v-col>
    
 
              <v-col cols="12">
                <v-alert color="error" text class="mb-0" >
                  <div class="d-flex align-start">
                    <v-icon color="warning">
                      <!-- {{ icons.mdiAlertOutline }} -->
                    </v-icon>
    
                    <div class="ms-3">
                      <p class="text-base font-weight-medium mb-1">
                        Si vous voulez que votre annonce sois bien visible, remplissez tout les champs
                      </p>
                      <v-spacer></v-spacer>
                      <a href="javascript:void(0)" class="text-decoration-none warning--text"  >
                        <span class="text-sm">
                          En déposant votre annonce, vous acceptez les Conditions d'Utilisation et la Politique de confidentialité.</span>
                      </a>
                    </div>
                  </div>
                </v-alert>
              </v-col>
    
              <v-col cols="12">
                <v-btn color="primary" class="me-3 mt-4" @click="submit()">
                  Modifier l'annonce
                </v-btn>
                <v-btn color="error" outlined class="mt-4" type="reset" >
                  Vider les champs
                </v-btn>
              </v-col>
            </v-row>
          </v-form>
        </v-card-text>
     </v-card>
    </div>
 </template>

<script>
// @ is an alias to /src
// import UploadImages from "vue-upload-drop-images";
// import { async } from "q";
import { mapActions, mapGetters } from "vuex";

export default {
  name: "Publicationcompo",
  components: {
    // UploadImages,
  },
  data() {
    return {
      msg: "",
      affiche: "",
      form: {
        // name: "",
        price: "",
        unite: "",
        quantity: "",
        description: "",
        lieu: "",
        publication_prod: "",
        image_url: "",
        type_produit: "",//
        nom_produit: 1,
        unite_de_mesure: "Kilogramme(Kg)",
        type_vente: "EN_GROS",
        variete: "",
      },
      id_utilisateur: null,
      uploadfile: "publication_prod",
      inputFiles: { publication_prod: "" },
      liste_nom_produit: [],
      liste_variete_produit: [],
      liste_type_produit: [],
      liste_varite_temp: [],
      liste_produit_temp: [],
      liste_nom_prod_temp: [],
    };
  },

  watch: {
    produit() {
       console.log(this.produit.produit);
       if (this.produit) {
         this.affiche = this.produit;
       }
     },
    files() {
      if (this.files.code_http === 200 || this.files.code_http === 201) {
        console.log("C'est OK");
        this.form.image_url = process.env.VUE_APP_UPLOAD + this.files["url"];
        console.log(this.form.image_url);
      }
    },
    msgSuccessProduit() {
      if(this.msgSuccessProduit === "Le produit a bien été envoyé") {
        console.log("Le produit a bien été envoyé");
      }
    },
    listeNomProduits() {
      if(this.listeNomProduits) {
        this.liste_nom_produit = this.listeNomProduits.original.object
        console.log("Liste produit");
        console.log(this.listeNomProduits);
      }
    },
    listeVariete() {
      if(this.listeVariete) {
        this.liste_variete_produit = this.listeVariete.original.object
        this.length_varité = this.listeVariete.original.object.length
        console.log("Liste varieté");
        console.log(this.listeVariete);
        console.log(this.length_varité);

      }
    },
    listeTypeProduits() {
      if(this.listeTypeProduits) {
        console.log(this.listeTypeProduits);
        console.log(this.listeTypeProduits.original);
        console.log(this.listeTypeProduits.original.object);
        this.liste_type_produit = this.listeTypeProduits.original.object
        console.log(this.liste_type_produit);
        console.log("Liste type");
        console.log(this.liste_type_produit);
      }
    }
},
  created() {
    const userdetails = JSON.parse(localStorage.getItem("user"));
    this.id_utilisateur = userdetails.id;
    this.All_liste_Produit()
  },

  computed: {
    ...mapGetters(["msgSuccessProduit", "files", "listeVariete", "listeNomProduits", "listeTypeProduits", "produit"]),
  },

  methods: {
    ...mapActions(["updateProduct", "postProduits", "saveFile", "getListeVariete", "getListeNomProduits", "getListeTypeProduits", "getProduit"]),

    All_liste_Produit() {
      this.getListeVariete();
      this.getListeNomProduits();
      this.getListeTypeProduits();
    },

    submit() {
      let produitamodifier = {
        quantite: this.form.quantity,
        prix: this.form.price,
        images: this.form.image_url,
        description: this.form.description,
        lieux_provenance: this.form.lieu,
        id_utilisateur: this.id_utilisateur,
        id_variete: this.form.variete,
        Unite_mesure: this.form.unite_de_mesure,
        Type_de_vente: this.form.type_de_vente,
        // libelle: this.form.name,
        type_produit: this.form.unite,
        id: this.form.id,
      };
      console.log(produitamodifier);
      this.updateProduct(produitamodifier);
    },

    init() {
      this.getProducts({
        produitaenvoyer,
      });
    },
   onFileCharge(filename) {
      this.inputFiles[filename] = this.$refs[filename].files[0].name;
      this.saveFile(this.$refs[filename].files[0]);
    },
    // hideModal() {},
    onReset(event) {
      event.preventDefault();
      // Reset our form values
      this.form.name = "";
      this.form.price = "";
      this.form.unite = null;
      this.form.quantity = "";
      this.form.description = "";
      this.form.image = "";
      // Trick to reset/clear native browser form validation state
      this.show = false;
      this.$nextTick(() => {
        this.show = true;
      });
    },
///////////////////////////////////// select
    onChange(evenement){
      console.log(this.form.nom_produit); //On y accède de n'importe où dans le framework
    },
    select_name_prod(event) {
      console.log("miouk =====> ",event);
      console.log("miouk liste prod=====> ",this.liste_nom_produit);
      
      const liste_objet_prod = this.liste_nom_produit.filter(prod => prod.Nom == event)
      if (liste_objet_prod == undefined || (liste_objet_prod && liste_objet_prod.length == 0 ) ) {
        return;
      }
      // recuperer le 1er elt
      const currentProd = liste_objet_prod[0]
      console.log("miouk liste prod filtrée  =====> ", liste_objet_prod);
      console.log("miouk id =====> ",this.liste_variete_produit);
     this.liste_varite_temp = this.liste_variete_produit.filter(element => element.db_produit_id == currentProd.id)
     console.log("miouk variete filtree =====> ",this.liste_varite_temp);   // console.log(event);
    },

    select_type_prod(event) {
      console.log("miouk =====> ",event);
      console.log("miouk liste prod=====> ",this.liste_type_produit);
      
      const liste_objetT_prod = this.liste_type_produit.filter(prod => prod.libelle == event)
      if (liste_objetT_prod == undefined || (liste_objetT_prod && liste_objetT_prod.length == 0 ) ) {
        return;
      }
      // recuperer le 1er elt
      const currentProdT = liste_objetT_prod[0]
      console.log("miouk liste prod filtrée  =====> ", liste_objetT_prod);
      console.log("miouk id =====> ",this.liste_nom_produit);
      this.liste_nom_prod_temp = this.liste_nom_produit.filter(element => element.id_type_produit == currentProdT.id)
      console.log("miouk nom filtree =====> ",this.liste_nom_prod_temp);   // console.log(event);
    }

    // det_variete() {
    //   // if(this.nom_produit === 1) {
    //     // this.liste_var = this.listeVariete.original.object
    //     let id_corespondant = [];
    //     let id_voila = 3
    //     for ( let i=0 ; i<=this.length_varité ; i++ ) {
    //       let parcour = this.liste_variete_produit[i]
    //       // console.log(parcour.Nom_variete);
    //       let resultat = parcour.find( element => element.id === '3');
    //       console.log(resultat);
    //     }
    //   // }
    // }
  },
};
</script>
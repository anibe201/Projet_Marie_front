<template>
   <div class="dashboard">
    <v-subheader class="d-flex justify-space-between align-center">
            <h3>Page de publication de produit</h3>
            <v-btn color="success" class="rouded-lg">
                View Orders
            </v-btn>
    </v-subheader>

    <v-container>
      <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-12"
        >
        <v-card
        class="mx-auto"
        max-width="400"
        outlined
        tile
      >
        <!-- <v-img
          class="white--text align-end"
          height="400px"
          :src="require('../../assets/img/home/slider2.png')"
        >
        </v-img> -->

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
      </v-card>
        </div>
        <div class="col-md-9 col-sm-9 col-xs-12"
        >
        <v-card flat class="pa-3 mt-2" >

          <v-alert
            dense
            type="info"
          >
            <strong>Publication de nouveaux oeufs</strong>
          </v-alert>
          <v-card-text>
            <v-form class="multi-col-validation mt-6">
              <v-row>
                <v-col md="6" cols="12"  >
                  <v-text-field label="Libéllé" dense outlined v-model="title"></v-text-field>
                </v-col>

                <v-col md="6" cols="12" >
                  <v-select dense outlined
                  v-model="selectCatID"
                  :hint="`${selectCatID.name}, ${selectCatID.id}`"
                  :items="listCategory"
                  item-text="name"
                  item-value="id"
                  label="select"
                  persistent-hint
                  return-object
                  @change="selectCategory(selectCatID.id)"
                  ></v-select>
                </v-col>

                <v-col md="12" cols="12" >
                  <v-select dense outlined
                  v-model="selectSubCatID"
                  :hint="`${selectSubCatID.name}, ${selectSubCatID.id}`"
                  :items="listSubCategoryTmp"
                  item-text="name"
                  item-value="id"
                  label="select"
                  persistent-hint
                  return-object
                  @change="selectSubCategory(selectSubCatID.id)"
                  ></v-select>
                </v-col>

                <v-col cols="12" md="8"  >
                  <v-text-field label="Quantité" dense outlined ></v-text-field>
                </v-col>

                <v-col cols="12" md="4"  >
                  <v-select
                  v-model="select"
                  :hint="`${select.state}, ${select.abbr}`"
                  :items="items"
                  item-text="state"
                  item-value="abbr"
                  label="Unité de mesure"
                  persistent-hint
                  return-object
                  dense outlined
                  @change="selectUnit(select.state)"
                ></v-select>
                </v-col>

                <v-col cols="12" md="12" >
                  <v-text-field dense label="Prix" outlined v-model="amount"></v-text-field>
                </v-col>

                <v-col cols="12" md="4"  >
                  <v-textarea
                  outlined
                  name="input-7-4"
                  label="Informations"
                  value=""
                  v-model="subtitle"
                ></v-textarea>
                </v-col>

                <v-col cols="12" md="8"  >
                  <v-textarea
                  outlined
                  name="input-7-4"
                  label="Descriptions"
                  value=""
                  v-model="description"
                ></v-textarea>
                </v-col>

                <v-col cols="12" md="12" >
                  <v-file-input
    v-model="files"
    color="deep-purple accent-4"
    counter
    label="File input"
    multiple
    placeholder="Select your files"
    prepend-icon="mdi-paperclip"
    outlined
    :show-size="1000"
    @change="selectImage(files)"

  >
    <template v-slot:selection="{ index, text }">
      <v-chip
        v-if="index < 2"
        color="deep-purple accent-4"
        dark
        label
        small
      >
        {{ text }}
      </v-chip>

      <span
        v-else-if="index === 2"
        class="text-overline grey--text text--darken-3 mx-2"
      >
        +{{ files.length - 2 }} File(s)
      </span>
    </template>
  </v-file-input>
                </v-col>
      <v-spacer></v-spacer>
            <v-col
            cols="12"
            md="2"
          >
        </v-col>

                <!-- alert -->


                <v-col cols="12">
                  <v-btn color="primary" class="me-3 mt-4" @click="submit()">
                    Créer le produit
                  </v-btn>
                  <v-btn color="error" outlined class="mt-4" type="reset" >
                    Annulé
                  </v-btn>
                </v-col>
              </v-row>
            </v-form>
          </v-card-text>
        </v-card>

        </div>
      </div>
    </v-container>

   </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";


  export default {
    data: () => ({
      images: [],
      title: '',
      amount: '',
      subtitle: '',
      description: '',
      CategoryId: '',
      SubCategoryId: '',
      SubSubCategoryId: '',
      UserId: '',
      imageField: [],
      unite: '',
      files: [],
      listCategory: [],
      listSubCategory: [],
      listSubCategoryTmp: [],
      dispImg: [],
      maximumImageCount: 10,

      selectCatID: { state: 'Florida', abbr: 'FL' },
      selectSubCatID: { state: 'Florida', abbr: 'FL' },
      select: { state: '', abbr: '' },
        items: [
          { state: 'Carton de 30', abbr: 'CT-30' },
          { state: 'Kilograme', abbr: 'Kg' },
          { state: 'Gramme', abbr: 'G' },
          { state: 'Unité', abbr: 'Unit' },
        ],
    }),

    watch: {
      categoryList() {
      if(this.categoryList) {
        console.log('le guetter marche bien');
        this.listCategory = this.categoryList
        console.log(this.listCategory);
      }
    },
    subCategoryList() {
      if(this.subCategoryList) {
        console.log('le guetter marche bien');
        this.listSubCategory = this.subCategoryList
        console.log(this.listSubCategory);
      }
    }
  },

  created() {
    this.getCategoryList();
    this.getSubCategoryList()
    const userdetails = JSON.parse(localStorage.getItem("users"));
    this.UserId = userdetails.user_id;
  },

  computed: {
      ...mapGetters(["msgSuccessProduit", "categoryList", "subCategoryList"]),
    },

  methods: {
    ...mapActions(["POST_PRODUIT", "getCategoryList", "getSubCategoryList"]),

    submit() {
        let productToSend = {
          title: this.title,
          amount: this.amount,
          subtitle: this.subtitle,
          description: this.description,
          CategoryId: this.CategoryId,
          // SubCategoryId: this.SubCategoryId,
          SubCategoryId: this.SubCategoryId,
          UserId: this.UserId,
          imageField: this.imageField,
          SubSubCategoryId: '1',
          // unite: this.unite,
        };
        // var formData = new FormData();
        // var fieldName;
        // for (fieldName in this.productToSend) {
        //   formData.append(fieldName, this.productToSend[fieldName]);
        // }
        // var i;
        // for (i = 0; i < this.images.length; i++) {
        // if (i < this.maximumImageCount)
        //   formData.append("imageField", this.images[i]);
        // }
        console.log(productToSend);
        // // this.imageField = formData
         this.POST_PRODUIT( productToSend )
        },

        showSuccess() {
            this.$toast.add({severity:'success', summary: 'Success Message', detail:'Entrez le code de validation', life: 3000});
        },
        selectCategory(event) {
          this.CategoryId = event;
          console.log("l'id categorie est " + event);
          this.listSubCategoryTmp = this.listSubCategory.filter(element => element.CategoryId == event)
          console.log("miouk nom filtree =====> ",this.listSubCategoryTmp);
        },

    selectSubCategory(event) {
      this.SubCategoryId = event;
      console.log("l'id sous categorie est " + event);
    },
    selectUnit(event) {
      this.unite = event;
      console.log("l'unité de mesure est " + event);
    },
    // selectImage(event) {
    //   console.log("voici l'image");
    //   console.log(event);
    //   let formData = new FormData();
    //   formData.append("file", event);
    //   console.log(formData)

    //   // let file = new File([event.blob], 'oeuf.jpg')
    //   //   // this.inputFiles[file] = this.$refs[file].files[0].name;
    //   //   console.log(file);
    //   //   this.imageField = file
    //     this.imageField = formData

    // },

    selectImage(event) {
      console.log("voici l'image");
      console.log(event);
      this.images = event;
      var i;
      this.dispImg = [];
      for (i = 0; i < this.images.length; i++) {
        if (i < this.maximumImageCount) {
          this.dispImg[i] = URL.createObjectURL(this.images[i]);
        }
      }
      console.log(this.dispImg)

      let formData = new FormData();
      formData.append("imageField", event);

      console.log(formData)
      this.imageField = formData
      console.log(this.imageField)

      // let file = new File([event.blob], 'oeuf.jpg')
      //   // this.inputFiles[file] = this.$refs[file].files[0].name;
      //   console.log(file);
      //   this.imageField = file
        // this.imageField = formData

    },

    // selectedImage(event) {
    //   this.images = event.target.files;


    //   console.log(this.image)


    //   if (this.images.length > this.maximumImageCount) {
    //     this.imageAlert = true;
    //   } else {
    //     this.imageAlert = false;
    //   }
    //   var i;

    //   this.dispImg = [];
    //   for (i = 0; i < this.images.length; i++) {
    //     if (i < this.maximumImageCount) {
    //       this.dispImg[i] = URL.createObjectURL(this.images[i]);
    //     }
    //   }
    //   console.log(this.dispImg)

    // }
      },
  }
</script>

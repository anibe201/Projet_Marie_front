<template>
  <div>
    <v-container>
      <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-12"
        >
        </div>
        <div class="col-md-9 col-sm-9 col-xs-12"
        >
        <v-card flat class="pa-3 mt-2" >

          <v-alert
            dense
            type="info"
          >
            <strong>Modifier cette publication</strong>
          </v-alert>
          <v-card-text>
            <v-form class="multi-col-validation mt-6">
              <v-row>
                <v-col md="6" cols="12"  >
                  <v-text-field label="Libéllé" dense outlined ></v-text-field>
                </v-col>

                <v-col md="6" cols="12" >
                  <v-select dense outlined label="Catégorie" ></v-select>
                </v-col>

                <v-col cols="12" md="6"  >
                  <v-text-field label="Quantité" dense outlined></v-text-field>
                </v-col>

                <v-col cols="12" md="6" >
                  <v-text-field dense label="Prix" outlined></v-text-field>
                </v-col>

                <v-col cols="12" md="12"  >
                  <v-textarea
                  outlined
                  name="input-7-4"
                  label="Descriptions"
                  value=""

                ></v-textarea>
                </v-col>

                <v-col cols="12" md="9" >
                  <v-card-text class="d-flex">

                    <v-avatar rounded size="120"  class="me-6" >
                      <v-img src="./../assets/img/home/1.png"></v-img>
                    </v-avatar>

                    <!-- upload photo -->
                    <div>
                      <v-btn color="primary" class="me-3 mt-5" >
                        <v-icon class="d-sm-none">
                          <!-- {{ icons.mdiCloudUploadOutline }} -->
                        </v-icon>
                        <input
                        type="file"
                        name="photoUser"
                        id="photoUser"
                        ref="photoUser"

                      />
                        <!-- <span class="d-none d-sm-block">Upload new photo</span> -->
                      </v-btn>

                      <input ref="refInputEl" type="file" accept=".jpeg,.png,.jpg,GIF" :hidden="true" />

                      <v-btn color="error" outlined  class="mt-5" >
                        Reset
                      </v-btn>
                      <p class="text-sm mt-5">
                        Accepté : JPG or PNG
                      </p>
                    </div>
                  </v-card-text>
                </v-col>
                <!-- <v-col
                  cols="12"
                  md="5"
                >
                  <v-select
                  disabled
                    outlined
                    dense
                    multiple
                    chips
                    small-chips
                    label="Langue"
                    :items="['English','Spanish','French','German']"
                  ></v-select>
                </v-col> -->
                <!-- <v-divider></v-divider>
                <v-alert
                type="success"
              >Vos informations personnel</v-alert> -->
      <v-spacer></v-spacer>
            <v-col
            cols="12"
            md="2"
          >
        </v-col>

                <!-- alert -->
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
                  <v-btn color="primary" class="me-3 mt-4">
                    Créer l'annonce
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
                {
                    id: 2,
                    name: 'Shoes',
                    children: [
                        { id: 2, name: 'Casuals' },
                        { id: 3, name: 'Formals' },
                        { id: 4, name: 'Sneakers' },
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
            products:[
                {
                    id:1,
                    name:'BLACK TEE',
                    type:'Jackets',
                    price:'18.00',
                    src:require('../assets/img/shop/1.jpg')
                },
                {
                    id:2,
                    name:'WHITE TEE',
                    type:'Polo',
                    price:'40.00',
                    src:require('../assets/img/shop/2.jpg')
                },
                {
                    id:3,
                    name:'Zara limited...',
                    type:'Denim',
                    price:'25.00',
                    src:require('../assets/img/shop/3.jpg')
                },
                {
                    id:4,
                    name:'SKULL TEE',
                    type:'Jackets',
                    price:'30.00',
                    src:require('../assets/img/shop/4.jpg')
                },
                {
                    id:5,
                    name:'MANGO WINTER',
                    type:'Sweaters',
                    price:'50.00',
                    src:require('../assets/img/shop/5.jpg')
                },
                {
                    id:6,
                    name:'SHIRT',
                    type:'Denim',
                    price:'34.00',
                    src:require('../assets/img/shop/6.jpg')
                },
                {
                    id:7,
                    name:'TRUCKER JACKET',
                    type:'Jackets',
                    price:'38.00',
                    src:require('../assets/img/shop/7.jpg')
                },
                {
                    id:8,
                    name:'COATS',
                    type:'Jackets',
                    price:'25.00',
                    src:require('../assets/img/shop/8.jpg')
                },{
                    id:9,
                    name:'MANGO WINTER',
                    type:'Sweaters',
                    price:'50.00',
                    src:require('../assets/img/shop/9.jpg')
                },
                {
                    id:10,
                    name:'SHIRT',
                    type:'Denim',
                    price:'34.00',
                    src:require('../assets/img/shop/10.jpg')
                },
                {
                    id:11,
                    name:'TRUCKER JACKET',
                    type:'Jackets',
                    price:'38.00',
                    src:require('../assets/img/shop/11.jpg')
                },
                {
                    id:12,
                    name:'COATS',
                    type:'Jackets',
                    price:'25.00',
                    src:require('../assets/img/shop/12.jpg')
                }
            ]
        }),
    }
</script>

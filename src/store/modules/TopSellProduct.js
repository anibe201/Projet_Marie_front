// import HTTP from "./../../Api/auth"
import Api from "../../Api/index"

const state = {
//   msgSuccessProduit: "",
//   msgErrorProduit: "",

    listeTopSellProduits: [],
    listeTopSellProdError: "",

    // produit: [],
    // prodError: "",

    // updateProduit: "",
    // updateproError: "",

    // listeProductsUser: [],
    // listeProductsUserError: "",

    // deleteProduits: "",
    // // Products file
    // files: [],
    // filerrors: "",
    // // User picture
    // filesPictureUser: [],
    // filerrorsPictureUser: "",
    // // User video
    // filesbanniere: [],
    // filerrorsbanniere: "",
    // //
    // isDelSet: false,
    isPostSet: false,
    // //
    // listeVariete: [],
    // listeVarieteError: "",
    // //
    // listeNomProduits: [],
    // listeNomProduitsError: "",
    // //
    // listeTypeProduits: [],
    // listeTypeProduitsError: "",

}

const getters = {
  // msgSuccessProduit: state => state.msgSuccessProduit,
  // msgErrorProduit: state => state.msgErrorProduit,


    listeTopSellProduits: state => state.listeTopSellProduits,
    listeTopSellProdError: state => state.listeTopSellProdError,

    // produit: state => state.produit,
    // prodError: state => state.prodError,

    // updateProduit: state => state.updateProduit,
    // updateproError: state => state.updateproError,

    // listeProductsUser: state => state.listeProductsUser,
    // listeProductsUserError: state => state.listeProductsUserError,
    // deleteProduits: state => state.deleteProduits,
    // // Products file
    // files: state => state.files,
    // filerrors: state => state.filerrors,
    // // User picture
    // filesPictureUser: state => state.filesPictureUser,
    // filerrorsPictureUser: state => state.filerrorsPictureUser,
    // // User video
    // filesbanniere: state => state.filesbanniere,
    // filerrorsbanniere: state => state.filerrorsbanniere,
    // //
    // isDelSet: state => state.isDelSet,
    // isPostSet: state => state.isPostSet,
    // // la liste des varites de touts les produits
    // listeVariete: state => state.listeVariete,
    // listeVarieteError: state => state.listeVarieteError,
    // // la liste des noms de touts les produits
    // listeNomProduits: state => state.listeNomProduits,
    // listeNomProduitsError: state => state.listeNomProduitsError,
    // // la liste des types produits
    // listeTypeProduits: state => state.listeTypeProduits,
    // listeTypeProduitsError: state => state.listeTypeProduitsError,
}

const actions = {

  // POST_PRODUIT({ commit }, data) {
  //       Api.post("/api/products/createProduct", data, {
  //         headers: {
  //           "Content-type": "application/json"
  //         }
  //       })
  //           .then(response => {
  //               commit("setmsgSuccessProduits", response.data)
  //               console.log(response.data);
  //           })
  //           .catch((error) => {
  //               commit("setmsgErrorProduits", error)
  //               commit("setPost", false)
  //           })
  //   },
    GET_TOP_SELL_PRODUIT({ commit }) {
        Api.get("/api/products/topSellProduct/6")
            .then(response => {
                commit("setListTopSellProduits", response.data)
                console.log(response.data);
            })
            .catch((error) => {
                commit("setlisteTopSellProdError", error)
            })
    },

    // GET_SINGLE_PRODUIT({ commit }, id) {
    //     Api.get("/product/" + id)
    //         .then(response => {
    //             commit("setProduit", response.data)
    //             console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("setprodError", error)
    //         })
    // },

    // UPDATE_A_PRODUCT({ commit }, id, data) {
    //     Api.put("/productUser/" + 29, data)
    //         .then(response => {
    //             commit("setupProduit", response.data)
    //             console.log(response.data)
    //         })
    //         .catch((error) => {
    //             commit("setUpdateErors", error.response.data.code_message)
    //         })
    // },

    // getUserProducts({ commit }) {
    //     HTTP.get(process.env.VUE_APP_AUTHURL + "produits_utilisateur")
    //         .then(response => {
    //             commit("setlisteProductsUser", response.data)
    //             // console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("setListeProductsUserError", error)
    //         })
    // },

    // delProduit({ commit }, id) {
    //     HTTP.delete(process.env.VUE_APP_AUTHURL + `produits/` + id).then(() => {
    //         commit("deleteProduit", 'Le produit a bien été supprime')
    //         commit("setDel", true)
    //         console.log("Le produit a bien été supprimé");
    //     }).catch((error) => {
    //         commit("setErors", "error")
    //         commit("setDel", false)
    //     })
    // },
    // saveFile({ commit }, data) {
    //     let fd = new FormData();
    //     fd.append('fichier', data)
    //     Api.post(process.env.VUE_APP_AUTHURL + "upload", fd, {
    //         headers: {
    //             'Content-Type': 'multipart/form-data'
    //         }
    //     })
    //         .then((response) => {
    //             commit("setFiles", response.data)
    //             console.log(response.data);
    //         }).catch((error) => {
    //             commit("setfileErors", "error")
    //             console.log(error);
    //         })
    // },
    // saveUserPicture({ commit }, data) {
    //     let fdata = new FormData();
    //     fdata.append('fichier', data)
    //     Api.post(process.env.VUE_APP_AUTHURL + "upload", fdata, {
    //         headers: {
    //             'Content-Type': 'multipart/form-data'
    //         }
    //     })
    //         .then((response) => {
    //             commit("setfilesPictureUser", response.data)
    //             console.log(response.data);
    //         }).catch((error) => {
    //             commit("setfilerrorsPictureUser", "error")
    //             console.log(error);
    //         })
    // },
    // saveUserbanniere({ commit }, data) {
    //     let fdta = new FormData();
    //     fdta.append('fichier', data)
    //     Api.post(process.env.VUE_APP_AUTHURL + "upload", fdta, {
    //         headers: {
    //             'Content-Type': 'multipart/form-data'
    //         }
    //     })
    //         .then((response) => {
    //             commit("setfilesbanniere", response.data)
    //             console.log(response.data);
    //         }).catch((error) => {
    //             commit("setfilerrorsbanniere", "error")
    //             console.log(error);
    //         })
    // },
    // updateMsg({commit}) {
    //         commit("setmsgSuccessProduits", null)
    // },
    // getListeVariete({ commit }) {
    //     Api.get(process.env.VUE_APP_AUTHURL + "varieteListe")
    //         .then(response => {
    //             commit("setlisteVariete", response.data)
    //             console.log("success produits liste");
    //             console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("setlisteVarieteError", error)
    //             console.log("error produits liste");
    //         })
    // },
    // getListeNomProduits({ commit }) {
    //     Api.get(process.env.VUE_APP_AUTHURL + "produitsListe")
    //         .then(response => {
    //             commit("SET_LISTE_NOMS_PRODUITS", response.data)
    //             console.log("success produits liste");
    //             console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("SET_LISTE_NOMS_PRODUITS_ERROR", error)
    //             console.log("error produits liste");
    //         })
    // },
    // getListeTypeProduits({ commit }) {
    //     Api.get(process.env.VUE_APP_AUTHURL + "typeproduits")
    //         .then(response => {
    //             commit("SET_LISTE_TYPES_PRODUITS", response.data)
    //             console.log("success type produits liste");
    //             console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("SET_LISTE_TYPES_PRODUITS_ERROR", error)
    //             console.log("error produits liste");
    //         })
    // },
}

const mutations = {

  // setmsgSuccessProduits: (state, msgSuccessProduit) => (state.msgSuccessProduit = msgSuccessProduit),
  // setmsgErrorProduits: (state, msgErrorProduit) => (state.msgErrorProduit = msgErrorProduit),

  setListTopSellProduits: (state, listeTopSellProduits) => (state.listeTopSellProduits = listeTopSellProduits),
  setlisteTopSellProdError: (state, listeTopSellProdError) => (state.listeTopSellProdError = listeTopSellProdError),

    // setProduit: (state, Produit) => (state.produit = Produit),
    // setprodError: (state, prodError) => (state.prodError = prodError),

    // setupProduit: (state, updateproduit) => (state.updateProduit = updateproduit),
    // setUpdateErors: (state, error) => (state.updateproError = error),


    // setlisteProductsUser: (state, listeProductsUser) => (state.listeProductsUser = listeProductsUser),
    // setListeProductsUserError: (state, listeProductsUserError) => (state.listeProductsUserError = listeProductsUserError),
    // deleteProduit: (state, deleteproduits) => (state.deleteProduits = deleteproduits),
    // // Products file
    // setFiles: (state, files) => (state.files = files),
    // setfileErors: (state, files) => (state.files = files),
    // setErors: (state, error) => (state.filerrors = error),
    // // User picture
    // setfilesPictureUser: (state, files) => (state.filesPictureUser = files),
    // setfilerrorsPictureUser: (state, files) => (state.filerrorsPictureUser = files),
    // // User video
    // setfilesbanniere: (state, files) => (state.filesbanniere = files),
    // setfilerrorsbanniere: (state, files) => (state.filerrorsbanniere = files),
    // //
    // setDel: (state, hasDel) => (state.isDelSet = hasDel),
    // setPost: (state, hasPost) => (state.isPostSet = hasPost),
    // // la liste des varietes de touts les produits
    // setlisteVariete: (state, hasVarList) => (state.listeVariete = hasVarList),
    // setlisteVarieteError: (state, hasVarListE) => (state.listeVariete = hasVarListE),
    // // la liste des noms de touts les produits
    // SET_LISTE_NOMS_PRODUITS: (state, hasVarList) => (state.listeNomProduits = hasVarList),
    // SET_LISTE_NOMS_PRODUITS_ERROR: (state, hasVarListE) => (state.listeNomProduitsError = hasVarListE),
    // // la liste des noms de touts les produits
    // SET_LISTE_TYPES_PRODUITS: (state, hasVarList) => (state.listeTypeProduits = hasVarList),
    // SET_LISTE_TYPES_PRODUITS_ERROR: (state, hasVarListE) => (state.listeTypeProduitsError = hasVarListE),
}


export default {
    state,
    mutations,
    getters,
    actions
}

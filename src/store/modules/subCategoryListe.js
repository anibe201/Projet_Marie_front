import HTTP from "./../../Api/auth"
import Api from "./../../Api/index"

const state = {
    // listeProduits: [],
    // produit: [],
    // listeProductsUser: [],
    // msgSuccessProduit: "",
    // listeProdError: "",
    // prodError: "",
    // listeProductsUserError: "",
    // msgErrorProduit: "",
    // updateProduit: "",
    // proError: "",
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
    // isPostSet: false,
    //
    // listeVariete: [],
    // listeVarieteError: "",
    //
    subCategoryList: [],
    subCategoryListError: "",
    // //
    // listeTypeProduits: [],
    // listeTypeProduitsError: "",

}

const getters = {
    // listeProduits: state => state.listeProduits,
    // produit: state => state.produit,
    // listeProductsUser: state => state.listeProductsUser,
    // msgSuccessProduit: state => state.msgSuccessProduit,
    // listeProdError: state => state.listeProdError,
    // prodError: state => state.prodError,
    // listeProductsUserError: state => state.listeProductsUserError,
    // msgErrorProduit: state => state.msgErrorProduit,
    // updateProduit: state => state.updateProduit,
    // proError: state => state.proError,
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
    // la liste des noms de touts les produits
    subCategoryList: state => state.subCategoryList,
    subCategoryListError: state => state.subCategoryListError,
    // // la liste des types produits
    // listeTypeProduits: state => state.listeTypeProduits,
    // listeTypeProduitsError: state => state.listeTypeProduitsError,
}

const actions = {
    // postProduits({ commit }, data) {
    //     HTTP.post(process.env.VUE_APP_AUTHURL + "produits", data)
    //         .then(response => {
    //             commit("setmsgSuccessProduits", "Le produit a bien été envoyé")
    //             commit("setPost", true)
    //             console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("setmsgErrorProduits", error)
    //             commit("setPost", false)
    //         })
    // },
    // getProduits({ commit }) {
    //     Api.get(process.env.VUE_APP_AUTHURL + "produits")
    //         .then(response => {
    //             commit("setListProduits", response.data)
    //         })
    //         .catch((error) => {
    //             commit("listeProdError", error)
    //         })
    // },
    // getProduit({ commit }, id) {
    //     Api.get(process.env.VUE_APP_AUTHURL + "produits/" + id)
    //         .then(response => {
    //             commit("setProduit", response.data)
    //             console.log(response.data);
    //         })
    //         .catch((error) => {
    //             commit("setprodError", error)
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
    // updateProduct({ commit }, data) {
    //     HTTP.put(process.env.VUE_APP_AUTHURL + "produits", data)
    //         .then(response => {
    //             commit("setupProduit", "Modification du produit effectuée avec succès.")
    //             console.log("Modification du produit effectuée avec succès.");
    //         })
    //         .catch((error) => {
    //             commit("setErors", error.response.data.code_message)
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
    getSubCategoryList({ commit }) {
        Api.get("/api/subCategory/getSubCategoryList")
            .then(response => {
                commit("SET_SUBCATEGORY_LIST", response.data)
                console.log("success produits liste");
                console.log(response.data);
            })
            .catch((error) => {
                commit("SET_SUBCATEGORY_LIST_ERROR", error)
                console.log("error produits liste");
            })
    },
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
    // setListProduits: (state, listeProduits) => (state.listeProduits = listeProduits),
    // setProduit: (state, Produit) => (state.produit = Produit),
    // setlisteProductsUser: (state, listeProductsUser) => (state.listeProductsUser = listeProductsUser),
    // setmsgSuccessProduits: (state, msgSuccessProduit) => (state.msgSuccessProduit = msgSuccessProduit),
    // listeProdError: (state, listeProdError) => (state.listeProdError = listeProdError),
    // setprodError: (state, prodError) => (state.prodError = prodError),
    // setListeProductsUserError: (state, listeProductsUserError) => (state.listeProductsUserError = listeProductsUserError),
    // setmsgErrorProduits: (state, msgErrorProduit) => (state.msgErrorProduit = msgErrorProduit),
    // setupProduit: (state, updateproduit) => (state.updateProduit = updateproduit),
    // setErors: (state, error) => (state.proError = error),
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
    // la liste des noms de touts les produits
    SET_SUBCATEGORY_LIST: (state, hasVarList) => (state.subCategoryList = hasVarList),
    SET_SUBCATEGORY_LIST_ERROR: (state, hasVarListE) => (state.subCategoryListError = hasVarListE),
    // la liste des noms de touts les produits
    // SET_LISTE_TYPES_PRODUITS: (state, hasVarList) => (state.listeTypeProduits = hasVarList),
    // SET_LISTE_TYPES_PRODUITS_ERROR: (state, hasVarListE) => (state.listeTypeProduitsError = hasVarListE),
}


export default {
    state,
    mutations,
    getters,
    actions
}

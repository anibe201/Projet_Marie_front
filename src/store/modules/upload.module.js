import HTTP from "./../../Api/auth"
import Api from "./../../Api/index"

const state = {
    // User picture
    FILES_PRODUCT: [],
    FILES_ERRORS_PRODUCT_USER: "",
}

const getters = {
    // User picture
    FILES_PRODUCT: state => state.FILES_PRODUCT,
    FILES_ERRORS_PRODUCT_USER: state => state.FILES_ERRORS_PRODUCT_USER,
}

const actions = {
   SAVE_PRODUCT_FILES({ commit }, data) {
        let fdata = new FormData();
        fdata.append('fichier', data)
        Api.post("upload/", fdata, {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
        })
            .then((response) => {
                commit("SET_FILES_PRODUCT_USER", response.data)
                console.log(response.data);
            }).catch((error) => {
                commit("SET_FILES_ERRORS_PRODUCT_USER", "error")
                console.log(error);
            })
    },
}
const mutations = {
    SET_FILES_PRODUCT_USER: (state, files) => (state.FILES_PRODUCT = files),
    SET_FILES_ERRORS_PRODUCT_USER: (state, files) => (state.FILES_ERRORS_PRODUCT_USER = files),
}

export default {
    state,
    mutations,
    getters,
    actions
}

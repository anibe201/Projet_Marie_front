import Api from "../../Api/index"
import HTTP from "../../Api/auth"


const formData = new FormData()
formData.append("grant_type", "client_credentials")
formData.append("client_id", 2)
formData.append("client_secret", process.env.VUE_APP_TOKEN)

const state = {
  // state enregistrement vendeur-acheteur
  MSG_SUCCESS_CLIENT: "",
  MSG_ERROR_CLIENT: null,

  MSG_AUTH_SUCESS_CLIENT: [],
  MSG_AUTH_ERROR_CLIENT: "",

  MSG_AUTH_CONFIRM_CLIENT: [],
  MSG_AUTH_ERROR_CONFIRM_CLIENT: "",
  // userMsg: "",
  // errors: "",
  // errorConnexion1: false,
  // istokenSet: false,
}

const getters = {
  // getters enregistrement vendeur-acheteur
  MSG_SUCCESS_CLIENT: state => state.MSG_SUCCESS_CLIENT,
  MSG_ERROR_CLIENT: state => state.MSG_ERROR_CLIENT,

  MSG_AUTH_SUCESS_CLIENT: state => state.MSG_AUTH_SUCESS_CLIENT,
  MSG_AUTH_ERROR_CLIENT: state => state.MSG_AUTH_ERROR_CLIENT,

  MSG_AUTH_CONFIRM_CLIENT: state => state.MSG_AUTH_CONFIRM_CLIENT,
  MSG_AUTH_ERROR_CONFIRM_CLIENT: state => state.MSG_AUTH_ERROR_CONFIRM_CLIENT,
  // userMsg: state => state.userMsg,
  // errors: state => state.errors,
  // successClient: state => state.successClient,
  // istokenSet: state => state.istokenSet,
  // errorConnexion1: state => state.errorConnexion1,

}

const actions = {

  // action enregistrement vendeur-acheteur
  ADD_CLIENT({ commit }, data) {
    Api.post("/api/auth/register", data)
      .then(response => {
        commit("SET_MSG_SUCCESS_CLIENT", 'User registered successfully!')
        console.log(response.data);
        const information = {
          userId: response.data.id,
          token: response.data.token,
        }
        console.log(information);
        localStorage.setItem("user", JSON.stringify(information))
    })
      .catch(errors => {
        commit("SET_MSG_ERROR_CLIENT", errors.response)
        // console.log(errors.response.data.erreurs);
        console.log(errors.response);
        // console.log(errors.response.data.code_http);
        // commit("setmsgSuccessClient", "")
      })
  },

  CONFIRM_CLIENT({ commit }, data) {
    Api.post("/api/auth/verifyRegsToken", data)
      .then(response => {
        commit("SET_MSG_AUTH_CONFIRM_CLIENT", response.data)
        console.log(response.data);
    })
      .catch(errors => {
        commit("SETMSG_AUTH_ERROR_CONFIRM_CLIENT", errors.response)
        // console.log(errors.response.data.erreurs);
        console.log(errors.response);
        // console.log(errors.response.data.code_http);
        // commit("setmsgSuccessClient", "")
      })
  },










  // getToken({ commit }) {
  //   Api.post(process.env.VUE_APP_BASEURL + "oauth/token", formData)
  //     .then(response => {
  //       localStorage.setItem("token", response.data.access_token)
  //       commit("setToken", true)
  //       commit("setErors", "")
  //       console.log("get token success")
  //     })
  //     .catch(errors => {
  //       console.log(errors)
  //       commit("setToken", false)
  //       commit("setErors", errors.response.data)
  //       console.log("get token error")
  //     })
  // },

  AUTH_CLIENT({ commit }, data) {
      Api.post("/api/auth/login", data)
        .then(response => {
          commit("SET_MSG_AUTH_SUCESS_CLIENT", response.data, "connexion reussi")
          console.log(response.data);
          localStorage.removeItem("user");
          const userdetails = {
            user_id: response.data.user.id,
            CompanyId: response.data.user.CompanyId,
            email: response.data.user.email,
            firstName: response.data.user.firstName,
            lastName: response.data.user.lastName,
            priority: response.data.user.priority,
            profileImage: response.data.user.profileImage,
            userType: response.data.user.userType,
            username: response.data.user.username,
            variant: response.data.user.variant,
          }
          console.log(userdetails);
          localStorage.setItem("users", JSON.stringify(userdetails))

          const authkey = {
            token: response.data.token,
          //   expiry: response.data.oauth.expires_at
          }
          console.log(authkey);
          localStorage.setItem("token", JSON.stringify(authkey))
        })
        .catch(errors => {
          commit("SET_MSG_AUTH_ERROR_CLIENT", errors.response)
          console.log(errors.response.data);
        })
  },

  // updateUser({ commit }, data) {
  //   console.log();
  //   HTTP.put(process.env.VUE_APP_AUTHURL + "utilisateurs", data)
  //     .then(() => {
  //       commit("setUserMsg", "Modification effectuée avec succès.")
  //       console.log("Modification effectuée avec succès.");
  //     })
  //     .catch(errors => {
  //       commit("setErors", errors)
  //     })
  // }
}

const mutations = {
    // mutations enregistrement vendeur-acheteur
    SET_MSG_SUCCESS_CLIENT: (state, usermsg) => (state.MSG_SUCCESS_CLIENT = usermsg),
    SET_MSG_ERROR_CLIENT: (state, error) => (state.MSG_ERROR_CLIENT = error),

    SET_MSG_AUTH_SUCESS_CLIENT: (state, users) => (state.MSG_AUTH_SUCESS_CLIENT = users),
    SET_MSG_AUTH_ERROR_CLIENT: (state, errorconnex) => (state.MSG_AUTH_ERROR_CLIENT = errorconnex),

    SET_MSG_AUTH_CONFIRM_CLIENT: (state, userscfm) => (state.MSG_AUTH_CONFIRM_CLIENT = userscfm),
    SETMSG_AUTH_ERROR_CONFIRM_CLIENT: (state, errorcon) => (state.MSG_AUTH_ERROR_CONFIRM_CLIENT = errorcon),
  // setErors: (state, data) => (state.errors = data),
  // setUserMsg: (state, usermsg) => (state.userMsg = usermsg),
  // setToken: (state, hasToken) => (state.istokenSet = hasToken),
  // seterrorConnexion1: (state, haserrorConnexion1) => (state.errorConnexion1 = haserrorConnexion1),

}

export default {
  state,
  getters,
  actions,
  mutations
}

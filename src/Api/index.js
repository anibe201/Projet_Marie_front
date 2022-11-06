import axios from 'axios'

const Api =  axios.create({
  baseURL: "http://localhost:5000",
  // headers: {
  //   "Content-type": "application/json"
  // }
})

// Api.interceptors.request.use((config) => {
//     if (localStorage.getItem("token") !== null) {
//       config.headers.Authorization = `Bearer ${localStorage.getItem('token')}`
//     }
//     return config
//   }, function (error) {
//     return Promise.reject(error)
//   })


//   Api.interceptors.response.use(function (response) {
//     return response
//   }, function (error) {
//     return Promise.reject(error)
//   })

export default Api

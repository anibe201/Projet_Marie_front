module.exports = {
  root: true,
  parser: "vue-eslint-parser",
  env: {
    browser: true,
  },
  extends: [
    "plugin:vue/recommended",
    "@vue/prettier",
    "plugin:prettier/recommended",
    "@vue/typescript",
  ],
  // required to lint *.vue files
  plugins: [
    "vue",
  ],
  // add your custom rules here
  rules: {
    // allow async-await
    "generator-star-spacing": "off",
    // allow debugger during development
    "no-debugger": process.env.NODE_ENV === "production" ? "error" : "off",
    "no-console": process.env.NODE_ENV === "production" ? "error" : "off",
  }

}
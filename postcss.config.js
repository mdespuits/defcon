const tailwindcss = require("tailwindcss");
const autoprefixer = require("autoprefixer");
const postcssCustomProperties = require("postcss-custom-properties");
// const IS_DEVELOPMENT = process.env.NODE_ENV === "development";

const plugins = [postcssCustomProperties, autoprefixer, tailwindcss];
module.exports = {
  plugins,
};

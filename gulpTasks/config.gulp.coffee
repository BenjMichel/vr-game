fs = require('fs')

srcPath = 'src'
wwwPath = 'www'

config =
  srcPath: srcPath
  wwwPath: wwwPath
  index:
    src: "#{srcPath}/index.html"
    dest: "#{wwwPath}"
  app:
    src: ["#{srcPath}/app.js"]
    concatFile: "app.js"
    dest: "#{wwwPath}/js"
  style:
    src: ["#{srcPath}/style.scss"]
    concatFile: "app.css"
    dest: "#{wwwPath}/css"
  templates:
    src: ["#{srcPath}/**/*.html", "!#{srcPath}/index.html"]
    moduleName: "cooptallianz"
    concatFile: "templates.js"
    dest: "#{wwwPath}/js"
  assets:
    src: "#{srcPath}/assets/**"
    dest: "#{wwwPath}"
  vendors:
    concatFileJs: "vendors.js"
    concatFileCss: "vendors.css"
    destFonts: "#{wwwPath}/fonts"
    destJS: "#{wwwPath}/js"
    destCSS: "#{wwwPath}/css"

module.exports = config

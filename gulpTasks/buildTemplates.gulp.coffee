gulp = require 'gulp'
plumber = require 'gulp-plumber'
angularTemplatecache = require 'gulp-angular-templatecache'

config = require './config.gulp.coffee'

gulp.task 'build:templates', ->
  gulp.src config.templates.src
  .pipe plumber()
  .pipe angularTemplatecache
    filename: config.templates.concatFile
    module: config.templates.moduleName
    standalone: false
  .pipe gulp.dest config.templates.dest

gulp = require 'gulp'
plumber = require 'gulp-plumber'
replace = require('gulp-replace-task')

config = require './config.gulp.coffee'

gulp.task 'build:index', ->
  gulp.src config.index.src
  .pipe plumber()
  .pipe gulp.dest config.index.dest

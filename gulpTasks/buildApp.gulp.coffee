gulp = require 'gulp'
sourcemaps = require 'gulp-sourcemaps'
annotate = require 'gulp-ng-annotate'
concat = require 'gulp-concat'
plumber = require 'gulp-plumber'
replace = require('gulp-replace-task')
config = require './config.gulp.coffee'
webpack = require 'webpack-stream'

gulp.task 'build:app', ->
  gulp.src config.app.src
  .pipe webpack require '../webpack.config.js'
  .pipe gulp.dest config.app.dest

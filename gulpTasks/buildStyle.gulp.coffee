gulp = require 'gulp'
plumber = require 'gulp-plumber'
sourcemaps = require 'gulp-sourcemaps'
sass = require 'gulp-sass'
concat = require 'gulp-concat'

config = require './config.gulp.coffee'

gulp.task 'build:style', ->
  gulp.src config.style.src
    .pipe plumber()
    .pipe sourcemaps.init()
    .pipe sass().on('error', sass.logError)
    .pipe concat config.style.concatFile
    .pipe sourcemaps.write()
    .pipe gulp.dest config.style.dest

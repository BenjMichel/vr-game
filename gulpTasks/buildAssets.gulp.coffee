gulp = require 'gulp'

config = require './config.gulp.coffee'

gulp.task 'build:assets', ->
  gulp.src config.assets.src
  .pipe gulp.dest config.assets.dest

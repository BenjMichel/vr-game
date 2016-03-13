gulp = require 'gulp'

config = require './config.gulp.coffee'

gulp.task 'watch', ['build'], ->
  gulp.watch "#{config.srcPath}/**", ['build']

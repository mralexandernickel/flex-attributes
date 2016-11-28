module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"
    sass:
      dist:
        files:
          "<%= pkg.name %>.css": "<%= pkg.name %>.scss"
    cssmin:
      dist:
        files:
          "<%= pkg.name %>.min.css": "<%= pkg.name %>.css"

  grunt.loadNpmTasks "grunt-sass"
  grunt.loadNpmTasks "grunt-contrib-cssmin"

  grunt.registerTask "default", ["sass"]
  grunt.registerTask "dist", ["sass","cssmin"]

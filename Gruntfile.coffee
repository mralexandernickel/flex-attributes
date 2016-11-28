module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"
    dist_path: "dist"
    src_path: "src"
    sass:
      dist:
        files:
          "<%= dist_path %>/<%= pkg.name %>.css": "<%= src_path %>/<%= pkg.name %>.scss"
      demo:
        files:
          "demo/demo.css": "demo/demo.sass"
    cssmin:
      dist:
        files:
          "<%= dist_path %>/<%= pkg.name %>.min.css": "<%= dist_path %>/<%= pkg.name %>.css"
      demo:
        files:
          "demo/demo.min.css": "demo/demo.css"

  grunt.loadNpmTasks "grunt-sass"
  grunt.loadNpmTasks "grunt-contrib-cssmin"

  grunt.registerTask "default", ["sass"]
  grunt.registerTask "dist", ["sass","cssmin"]

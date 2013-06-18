module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig(
    watch: 
      latex:
        files: "**/*.tex"
        tasks: ["exec:latex"]
        options:
          interrupt: true

    exec:
      latex:
        command: "xelatex -output-directory=Output Main.tex"

  )
  
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-exec')

  grunt.registerTask('default', ['exec:latex', 'watch'])


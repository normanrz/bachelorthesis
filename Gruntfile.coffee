module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig(
    watch: 
      latex:
        files: "**/*.tex"
        tasks: ["exec:latex"]
        options:
          interrupt: true
      bibtex:
        files: "**/*.bib"
        tasks: ["exec:bibtex"]
        options:
          interrupt: true

    exec:
      latex:
        command: "xelatex Main.tex"
      bibtex:
        command: "bibtex Main"

  )
  
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-exec')

  grunt.registerTask('build', ['exec:latex', 'exec:bibtex', 'exec:latex'])
  grunt.registerTask('default', ['build', 'watch'])


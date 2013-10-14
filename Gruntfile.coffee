module.exports = (grunt) ->

    grunt.initConfig
        coffee:
            compile:
                files:
                    'demo.js': 'demo.coffee'
        watch:
            coffee:
                files: ['*.coffee'],
                tasks: ['coffee']
        grunt.loadNpmTasks('grunt-contrib-coffee');
        grunt.loadNpmTasks('grunt-contrib-watch');

        grunt.registerTask('default', ['coffee', 'watch']);

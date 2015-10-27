angular.module('todo').controller 'projectsCtrl',
  [ 'projectFactory', '$state', (projectFactory, $state) ->  
    @projects = projectFactory.getProjects().$object
    console.log @projects

    @addProject = ->
      $state.go 'new_project'

    @
    
  ]



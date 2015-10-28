angular.module('todo').controller 'newProjectsCtrl',
  [ 'projectFactory', '$state', (projectFactory, $state) ->  
    @create = ->
      projectFactory.addProject @project
        .then ->
          $state.go 'projects'
    @    
  ]


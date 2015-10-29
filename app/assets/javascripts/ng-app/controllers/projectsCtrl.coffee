angular.module('todo').controller 'projectsCtrl',
  [ 'projectFactory', '$state', 
  	(projectFactory, $state) ->  
      @projects = projectFactory.getProjects()      

      @addProject = ->
        $state.go 'new_project'  

      @
    
  ]



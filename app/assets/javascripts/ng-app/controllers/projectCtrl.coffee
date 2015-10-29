angular.module('todo').controller 'projectCtrl',
  [ 'projectFactory', 'taskFactory', '$state', 
    (projectFactory, taskFactory, $state) ->  
      @removeProject = (project, projects) -> 
        projectFactory.removeProject project, projects

      @createTask = (project, task) ->
      	taskFactory.createTask project, task




      
       

      @
    
  ]



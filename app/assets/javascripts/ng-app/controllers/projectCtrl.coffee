angular.module('todo').controller 'projectCtrl',
  [ 'projectFactory', 'taskFactory', '$state', 
    (projectFactory, taskFactory, $state) ->  

      @removeProject = (project, projects) -> 
        projectFactory.removeProject project, projects 

      @updateProject = (project, data)->  
        projectFactory.updateProject(project, data)    

      @createTask = (project) ->
        taskFactory.createTask project, @task
          .then (data)->
            project.tasks.push data
        @task = {}

      @
    
  ]



angular.module('todo').controller 'projectCtrl',
  [ 'projectFactory', 'taskFactory', '$state', 
    (projectFactory, taskFactory, $state) ->  

      @removeProject = (project, projects) -> 
        projectFactory.removeProject project, projects 

      @updateProject = (project, data)->          
        console.log data
        console.log project 
        project.patch({title:data})    

      @createTask = (project) ->
        taskFactory.createTask project, @task
          .then (data)->
            project.tasks.push data
        @task = {}

      @
    
  ]



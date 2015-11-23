angular.module('todo').controller 'projectsCtrl',
  [ 'projectFactory', '$state', 
    (projectFactory, $state) ->  
      @projects = projectFactory.getProjects()  

      _.map(@projects.project, (project)->   
        _.map(project.tasks, (task)->     
            if task.deadline
              task.deadline = new Date(task.deadline)
          ))     

      @addProject = ->
        $state.go 'new_project'  

      @sortableOptions = 
        asix: 'y'
        connectWith: '.red'
        update: ->
          console.log 'update'
          console.log @
        stop: (e, ui) ->		
          console.log 'stop'	
      
      @
  ]



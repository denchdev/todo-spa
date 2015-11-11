angular.module('todo').controller 'taskCtrl', 
  ['taskFactory', 'commentFactory', (taskFactory, commentFactory) ->  

    @createComment = (task) ->      
      console.log task
        
    @removeTask = (project, task) ->
      taskFactory.removeTask project, task
      task ={}

    @updateTask = (project, task, data)->  
    	taskFactory.updateTask project, task, data

    @changeStatus = (project, task) ->
      task.state = !task.state
      @updateTask project, task, {state: task.state}    
     


    @
  ]

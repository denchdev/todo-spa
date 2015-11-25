angular.module('todo').controller 'taskCtrl', 
  ['taskFactory', 'commentFactory', (taskFactory, commentFactory) ->  

    console.log @task
    @createComment = (project, task) -> 
      console.log @comment     
      commentFactory.createComment project, task, @comment
        .then (data)->          
          task.comments.push data
        @comment = {}    
        
    @removeTask = (project, task) ->
      taskFactory.removeTask project, task
      task ={}

    @updateTask = (project, task, data)->       
    	taskFactory.updateTask project, task, data
        .then ->
          console.log task

    @changeStatus = (project, task) ->
      task.state = !task.state
      @updateTask project, task, {state: task.state} 

    @
  ]

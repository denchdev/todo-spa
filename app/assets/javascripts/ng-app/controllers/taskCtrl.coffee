angular.module('todo').controller 'taskCtrl', (taskFactory) ->  
  @isEditing = false
  @editingTask = null

  @removeTask = (project, task) ->
    taskFactory.removeTask project, task
    task ={}

  @updateTask = (project, task, data)->  
    project.patch({title:data}) 

  @

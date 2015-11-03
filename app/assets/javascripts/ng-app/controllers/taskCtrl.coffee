angular.module('todo').controller 'taskCtrl', (taskFactory) ->  
  @isEditing = false
  @editingTask = null

  @removeTask = (project, task) ->
    taskFactory.removeTask project, task
    task ={}

  @editTask = (task) ->
    console.log 'editTask click'
    @isEditing = true
    @editingTask = angular.copy task

  @updateTask = ->
    taskFactory.updateTask @editingTask
    @editingTask = null
    @isEditing = false

  @

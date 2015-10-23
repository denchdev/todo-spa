angular.module('todo').controller 'taskCtrl', (taskFactory) ->  
  @isEditing = false
  @editingTask = null

  @deleteTask = (task) ->
    taskFactory.deleteTask task

  @editTask = (task) ->
    console.log 'editTask click'
    @isEditing = true
    @editingTask = angular.copy task

  @updateTask = ->
    taskFactory.updateTask @editingTask
    @editingTask = null
    @isEditing = false

  @

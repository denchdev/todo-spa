angular.module('todo').controller 'taskCtrl', (taskFactory) ->  
  @isEditing = false
  @editingTask = null

  @removeTask = (task) ->
    taskFactory.removeTask task

  @editTask = (task) ->
    console.log 'editTask click'
    @isEditing = true
    @editingTask = angular.copy task

  @updateTask = ->
    taskFactory.updateTask @editingTask
    @editingTask = null
    @isEditing = false

  @

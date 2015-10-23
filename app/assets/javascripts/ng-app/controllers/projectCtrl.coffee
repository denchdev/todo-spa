angular.module('todo').controller 'projectCtrl', (projectFactory, taskFactory) ->
  @removeProject = (project) ->
    projectFactory.removeProject project 
    console.log 'projectCtrl'

  @getTasks = (project) ->
    taskFactory.getTasks project

  @createTask = (project) ->
    taskFactory.createTask project, @taskTitle
    @taskTitle = ''

  @



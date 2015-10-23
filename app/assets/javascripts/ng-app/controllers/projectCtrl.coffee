angular.module('todo').controller 'projectCtrl', (projectFactory, taskFactory) ->
  @removeProject = (project) ->
    projectFactory.removeProject project 

  @getTasks = (project) ->
    taskFactory.getTasks project

  @createTask = (project) ->
    taskFactory.createTask list, @title
    @title = ''



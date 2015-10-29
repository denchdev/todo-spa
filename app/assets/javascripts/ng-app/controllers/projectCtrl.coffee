angular.module('todo').controller 'projectCtrl', (projectFactory, taskFactory) ->
  @getTasks = (project) ->
    taskFactory.getTasks project

  @removeProject = (project, projects) ->
    projectFactory.removeProject project, projects 
    

    
  @createTask = (project) ->
    taskFactory.createTask project, @task      

  @



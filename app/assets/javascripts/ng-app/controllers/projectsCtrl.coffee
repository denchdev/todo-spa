angular.module('todo').controller 'projectsCtrl', (projectFactory) ->  
  @projects = projectFactory.getProjects()
  
  @addProject = ->
    console.log 's'
    @projectTitle = ''

  @



angular.module('todo').factory 'projectFactory', ($http)->
  service = {}
  projects = [
    
  ]

  service.getProjects = ->
    $http.get('/projects.json')
      .success (data) ->
        angular.copy data, projects
    projects

  service.addProject = (projectTitle) ->
    $http.post('/projects.json')
      .success
      
    projects.push
      id: _.uniqueId()
      title: projectTitle

  service.removeProject = (project) ->
    _.pull projects, project

  service


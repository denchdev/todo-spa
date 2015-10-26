angular.module('todo').factory 'projectFactory', ($http)->
  service = {}
  projects = []

  service.getProjects = ->
    $http.get('/projects.json')
      .success (data) ->
        angular.copy data, projects
        console.log projects
    projects

  service.addProject = (projectTitle) ->
    $http.post('/projects.json', {'title': projectTitle})
      .success (data)->
        projects.push data        
     
  service.removeProject = (project) ->
    $http.delete('/projects/' + project.id + '.json')
      .success (data) ->
        _.pull projects, project

  service


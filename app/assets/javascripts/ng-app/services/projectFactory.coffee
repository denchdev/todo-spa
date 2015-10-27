angular.module('todo').factory 'projectFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {}      
      projects = Restangular.all('projects')

      service.getProjects = ->
        projects.getList()

      service.addProject = (project) ->
        projects.post project

      service       
  ]
  


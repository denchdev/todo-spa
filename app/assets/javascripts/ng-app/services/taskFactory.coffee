angular.module('todo').factory 'taskFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {}      
      projects = Restangular.all('projects')
      tasks    = Restangular.all('tasks')

      service.getProjects = (project)->
        project.all('tasks').getList()

      service    
  ]
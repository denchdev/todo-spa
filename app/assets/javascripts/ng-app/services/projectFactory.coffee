angular.module('todo').factory 'projectFactory', 
  [
    'Restangular', 
    (Restangular)->
      getProjects: -> Restangular.all('projects').getList
      addProject: (project) -> Restangular.all('projects').post project
  ]
  


angular.module('todo').factory 'projectFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {} 

      projects = Restangular.all('projects')

      service.getProjects = ->
        projects.getList().$object        

      service.addProject = (project) ->
        projects.post project

      service.removeProject = (project, projects) ->
        Restangular.one('projects', project.id).remove()  
          .then ->            
            _.remove(projects, (p) -> p == project)

      service       
  ]
  


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

      service.updateProject = (project, data) ->
        project.patch(data) 

      service.removeProject = (project, projects) ->        
        project.remove()        
          .then ->            
            _.remove(projects, (p) -> p == project)

      service       
  ]
  


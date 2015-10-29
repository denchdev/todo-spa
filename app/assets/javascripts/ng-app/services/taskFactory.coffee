angular.module('todo').factory 'taskFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {}      
      
      service.getTasks = (project) ->     
        console.log 'project in get task taskFactory', project

      service.createTask = (project, task) ->        
        Restangular.one('projects', project.id).all('tasks').post task

      service.removeTask = (task) -> 
        Restangular.one('tasks', task.id).remove()
        task = {}
    
      service.updateTask = (task) ->         
        Restangular.one("tasks", task.id).patch task 




      service    
  ]
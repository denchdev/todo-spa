angular.module('todo').factory 'taskFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {}      
      
      service.createTask = (project, task) ->        
        project.all('tasks').post task              

      service.removeTask = (project, task) -> 
        project.one('tasks', task.id).remove()
          .then ->
            _.remove(project.tasks, (t) -> t == task)


      service.updateTask = (project, task, data) ->         
        project.one('tasks', task.id).patch data 

      service    
  ]
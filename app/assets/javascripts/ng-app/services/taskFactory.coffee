angular.module('todo').factory 'taskFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {}      
      
      service.getTasks = (project) ->        
        console.log project.all('tasks').getList()
        console.log project

      service.createTask = (project, task) ->        
        console.log project

      service.removeTask = (task) -> 
        Restangular.one('tasks', task.id).remove()
    
      service.updateTask = (task) ->
        task_wrapper = {task: task}
        Restangular.one("tasks", task.id).patch(task_wrapper)




      service    
  ]
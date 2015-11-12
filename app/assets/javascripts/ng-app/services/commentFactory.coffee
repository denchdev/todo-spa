angular.module('todo').factory 'commentFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {} 

      service.createComment = (project, task, comment) ->
        project.one('tasks', task.id).all('comments').post comment    

      service.removeComment = (project, task, comment) -> 
        project.one('tasks', task.id).one('comments', comment.id).remove()
          .then ->
            _.remove(task.comments, (c) -> c == comment)

      service.updateComment = (project, task, comment, data) ->         
        project.one('tasks', task.id).one('comments', comment.id).patch data   
        
      service    
  ]
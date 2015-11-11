angular.module('todo').factory 'commentFactory', 
  [
    'Restangular', 
    (Restangular)->
      service = {}      
      
      service.getComments = (task) ->
        task.all('comments')  

      service.createComment = (task, comment) ->
        task.all('comments').post comment   
        console.log task 

      service.updateComment = () ->    

      service.removeComment = () ->        

      

      service    
  ]
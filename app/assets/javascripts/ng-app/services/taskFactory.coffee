angular.module('todo').factory 'taskFactory', ($http)->
  service = {}
  tasks = []

  service.getTasks = (project)->  
    $http.get('/projects/' + project.id + '/tasks.json')
      .success (data) ->
        data
        console.log data  
    

  service.createTask = (project, taskTitle) ->
    $http.post('/projects/' + project.id + '/tasks.json', {'title': taskTitle})
      .success (data)->
        tasks.push data 

  service.deleteTask = (project, task) ->
    $http.delete('/projects/' + project.id + '.json')
      .success (data) ->
        _.pull tasks, task

  service.updateTask = (updatingTask) ->
    task = _.findWhere(tasks, id: updatingTask.id)
    task.title = updatingTask.title
    task.project_id = updatingTask.project_id  

  console.log 'taskFac'
  service


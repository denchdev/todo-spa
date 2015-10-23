angular.module('todo').factory 'taskFactory', ->
  service = {}
  tasks = [
    {
      id: 1
      title: 'first task'  
      project_id: 1    
    }
    {
      id: 2
      title: 'second task'
      project_id: 1
    }
  ]

  service.getTasks = (project)->
    _.filter tasks, project_id: project.id

  service.createTask = (project, taskTitle) ->
    tasks.push
      id: _.uniqueId()
      title: taskTitle
      project_id: project.id

  service.deleteTask = (task) ->
    _.pull tasks, task

  service.updateTask = (updatingTask) ->
    task = _.findWhere(tasks, id: updatingTask.id)
    task.title = updatingTask.title
    task.project_id = updatingTask.project_id  

  console.log 'taskFac'
  service


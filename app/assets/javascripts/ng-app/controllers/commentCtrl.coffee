angular.module('todo').controller 'commentCtrl',
  ['commentFactory'
  (commentFactory) ->

    @removeComment = (project, task, comment) ->
      commentFactory.removeComment project, task, comment
      comment ={}

    @updateComment = (project, task, comment, data)->  
      commentFactory.updateComment project, task, comment, data

    @

  ]
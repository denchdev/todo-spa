angular.module('todo').controller 'commentCtrl',
  ['commentFactory', 'FileUploader'
  (commentFactory, FileUploader) ->
    @uploader = new FileUploader
      queueLimit: 4

    @removeComment = (project, task, comment) ->
      commentFactory.removeComment project, task, comment
      comment ={}

    @updateComment = (project, task, comment, data)->  
      commentFactory.updateComment project, task, comment, data

    @

  ]
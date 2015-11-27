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

    @uploader.onWhenAddingFileFailed = (item, filter, options) ->
      console.info 'onWhenAddingFileFailed', item, filter, options

    @uploader.onAfterAddingFile = (fileItem) ->
      console.info('onAfterAddingFile', fileItem)

    @uploader.onAfterAddingAll = (addedFileItems) ->
        console.info('onAfterAddingAll', addedFileItems)
    
    @uploader.onBeforeUploadItem = (item) ->
      console.info('onBeforeUploadItem', item)

    @uploader.onProgressItem = (fileItem, progress) ->
      console.info('onProgressItem', fileItem, progress)

    @uploader.onProgressAll = (progress) ->
      console.info('onProgressAll', progress)

    @uploader.onSuccessItem = (fileItem, response, status, headers) ->
      console.info('onSuccessItem', fileItem, response, status, headers)
  
    @uploader.onErrorItem = (fileItem, response, status, headers) ->
      console.info('onErrorItem', fileItem, response, status, headers)

    @uploader.onCancelItem = (fileItem, response, status, headers) ->
      console.info('onCancelItem', fileItem, response, status, headers)

    @uploader.onCompleteItem = (fileItem, response, status, headers) ->
      console.info('onCompleteItem', fileItem, response, status, headers)

    @uploader.onCompleteAll = ->
      console.info('onCompleteAll')

    console.info('uploader', @uploader)

    @

  ]
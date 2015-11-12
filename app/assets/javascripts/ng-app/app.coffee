angular.module('todo', [
  'templates', 
  'restangular', 
  'ui.router',
  'xeditable',
  'ui.sortable',
  'angularFileUpload'
])
  .config ['RestangularProvider', (RestangularProvider) -> 
    RestangularProvider
      .setBaseUrl '/'      
      .setRequestSuffix '.json' 
      .setErrorInterceptor (response, deferred, responseHandler) ->
        if response.status == 403
          $http(response.config).then(responseHandler, deferred.reject)
          location.href = "/#/"
          return false
      
  ]

  .run ['editableOptions', 'editableThemes',
    (editableOptions, editableThemes)->     
      editableThemes.bs3.inputClass = 'input-sm'
      editableThemes.bs3.buttonsClass = 'btn-sm'
      editableOptions.theme = 'bs3'
  ] 

 
 
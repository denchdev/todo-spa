angular.module('todo', [
  'templates', 
  'restangular', 
  'ui.router',
  'xeditable'
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
      editableThemes.bs3.inputClass = 'input-lg'
      editableThemes.bs3.buttonsClass = 'btn-lg'
      editableOptions.theme = 'bs3'
  ] 

 
 
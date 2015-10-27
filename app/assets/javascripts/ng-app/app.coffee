angular.module('todo', [
  'templates', 
  'restangular', 
  'ui.router'
])
  .config ['RestangularProvider', (RestangularProvider) -> 

    RestangularProvider
      .setBaseUrl '/'
      .setRestangularFields
        id: '_id.$oid'      
      .setMethodOverriders ['put', 'delete'] 
      .setRequestSuffix '.json' 
      .setErrorInterceptor (response)->
        stopLoading()
        displayError()
  ]
  .config ['$stateProvider', '$urlRouterProvider',
    ($stateProvider, $urlRouterProvider) ->
      $stateProvider
        .state 'projects',
          url: '/projects',
          templateUrl: 'ng-app/templates/projects.html',
          controller: 'projectsCtrl'

        .state 'new_project',
          url: '/projects/new',
          templateUrl: 'ng-app/templates/new_project.html',
          controller: 'newProjectsCtrl'

      $urlRouterProvider.otherwise '/projects'


  ]

  

 
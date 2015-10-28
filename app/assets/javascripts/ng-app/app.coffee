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

        .state 'log_in',
          url: '/log_in',
          template: '<h1>LOG IN</h1>',
          controller:''



      $urlRouterProvider.otherwise '/projects'


  ]

  

 
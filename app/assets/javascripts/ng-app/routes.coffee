angular.module('todo')
  .config ['$stateProvider', '$urlRouterProvider',
    ($stateProvider, $urlRouterProvider) ->
      $stateProvider
        .state 'projects',
          url: '/projects',
          templateUrl: 'ng-app/templates/projects.html',
          controller: 'projectsCtrl as projectsCtrl'

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

  

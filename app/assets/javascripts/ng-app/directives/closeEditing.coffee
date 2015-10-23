angular.module('todo').directive 'closeEditing',  ->
  KEY = ESCAPE: 27

  {
    scope: isEditing: '='
    link: (scope, element, attrs) ->
      element.on 'keyup', (e) ->
        if _.isEqual(e.keyCode, KEYS.ESCAPE)
          scope.isEditing = false
          scope.$apply
  }
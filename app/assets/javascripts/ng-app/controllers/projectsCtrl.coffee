angular.module('todo').controller 'projectsCtrl',
	[ 'projectFactory', '$state', 
		(projectFactory, $state) ->  
			@projects = projectFactory.getProjects()      

			@addProject = ->
				$state.go 'new_project'  

			@sortableOptions = 
				asix: 'y'
				connectWith: '.red'
				update: ->
					console.log 'update'
					console.log @
				stop: (e, ui) ->		
					console.log 'stop'	

					
			@
	]



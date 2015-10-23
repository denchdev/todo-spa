angular.module('todo').factory 'projectFactory', ->
	service = {}
	projects = [
		{
			id: 1
			title: 'first project'      
		}
		{
			id: 2
			title: 'second project'
		}
	]

	service.getProjects = ->
		projects

	service.addProject = (projectTitle) ->
		projects.push
			id: _.uniqueId()
			title: projectTitle

	service.removeProject = (project) ->
		_.pull projects, project

	service


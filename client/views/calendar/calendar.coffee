# Calendar: Event Handlers and Helpers
Template.Calendar.events
	'click #calendar': (e, tmpl) ->
		console.log e.target

Template.Calendar.helpers 
	calendarOptions: () -> { 
		defaultView: 'basicWeek' 
		id: 'calendar' 
		timezone: 'local'

		height: 200

		header: 
			left: 'title'
			center: ''
			right: 'basicWeek sMonth today prev,next'

		views:
			sMonth:
				type: 'basicWeek'
				duration:
					day: 30
				buttonText: 'Month'

		# dayClick: (p1, event)->
    	# console.log event.target
	}

# Calendar: Lifecycle Hooks
Template.Calendar.created = ->

Template.Calendar.rendered = ->


Template.Calendar.destroyed = ->


	 


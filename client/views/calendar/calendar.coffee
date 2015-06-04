# Calendar: Event Handlers and Helpers
Template.Calendar.events
	'click .fc-basicWeek-button': (e, tmpl)->
		$('.div.fc-view').width('100%');
	'click .fc-sMonth-button': (e, tmpl)->
		$('div.fc-view').width('450%');
	'click .fc-sHalfYear-button': (e, tmpl)->
		$('div.fc-view').width('2500%');

Template.Calendar.helpers 
	calendarOptions: () -> { 
		defaultView: 'basicWeek' 
		id: 'calendar' 
		timezone: 'local'

		height: 200

		header: 
			left: 'title'
			center: ''
			right: 'basicWeek,sMonth,sHalfYear today prev,next'

		views:
			sMonth:
				type: 'basicDay'
				duration:
					day: 30
				buttonText: 'Month'
			sHalfYear:
				type: 'basicDay'
				duration:
					day: 180
				buttonText: '6 month'


		events: [
			{
				title  : 'event1',
				start  : '2015-04-05',
				end    : '2015-04-14'
			}
			{
				title  : 'event2',
				start  : '2015-06-05',
				end    : '2015-07-27'
			}
			{
				title  : 'event3',
				start  : '2015-07-07',
				end    : '2015-08-27'
			}
		]

	}

# Calendar: Lifecycle Hooks
Template.Calendar.created = ->

Template.Calendar.rendered = ->


Template.Calendar.destroyed = ->


	 


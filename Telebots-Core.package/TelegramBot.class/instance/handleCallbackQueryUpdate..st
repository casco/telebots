as yet unclassified
handleCallbackQueryUpdate: aCallbackQueryUpdate

	| callback |
	callback := aCallbackQueryUpdate callbackQuery data.
	(self class canPerform: callback asValidSelector , ':')
		ifTrue: [ 
		self perform: callback asValidSelector , ':' with: aCallbackQueryUpdate callbackQuery ]
		ifFalse: [ 
		self error: 'Mensaje ', callback, ' no implementado.'
			]
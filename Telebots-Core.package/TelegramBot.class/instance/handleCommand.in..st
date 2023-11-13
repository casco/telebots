hooks
handleCommand: aCommand in: aMessage

	(self class canPerform: aCommand asValidSelector , ':')
		ifTrue: [ 
		self perform: aCommand asValidSelector , ':' with: aMessage ]
		ifFalse: [ 
		aMessage answer: aCommand , ' is not a recognized command' ]
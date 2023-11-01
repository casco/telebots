hooks
handleCommand: aCommand in: aMessage

	[ self perform: aCommand asValidSelector , ':' with: aMessage ]
		on: MessageNotUnderstood
		do: [ aMessage answer: aCommand , ' is not a recognized command' ]
action
handleMessage: aMessage

	aMessage voice ifNotNil: [ ^ self handleVoiceMessage: aMessage ].
	aMessage photos ifNotEmpty: [ ^ self handlePhotoMessage: aMessage ].
	aMessage text trimBoth ifNotEmpty: [ :it | 
		it first = $/ ifTrue: [ ^ self handleCommand: it in: aMessage ] ].
	self handleTextMessage: aMessage
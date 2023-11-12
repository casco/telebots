update handling
handleMessageReceivedUpdate: aMessageReceivedUpdate

	| msg |
	msg := aMessageReceivedUpdate message.
	msg voice ifNotNil: [ ^ self handleVoiceMessage: msg ].
	msg photos ifNotEmpty: [ ^ self handlePhotoMessage: msg ].
	msg text trimBoth ifNotEmpty: [ :it | 
		it first = $/ ifTrue: [ ^ self handleCommand: it in: msg ] ].
	self handleTextMessage: msg
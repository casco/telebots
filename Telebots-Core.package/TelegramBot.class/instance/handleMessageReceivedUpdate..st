update handling
handleMessageReceivedUpdate: aMessageReceivedUpdate

	| msg |
	msg := aMessageReceivedUpdate message.
	msg voice ifNotNil: [ ^ self handleVoiceMessage: msg ].
	msg photos ifNotEmpty: [ ^ self handlePhotoMessage: msg ].
	msg document ifNotNil: [ ^ self handleDocumentMessage: msg ].
	msg text trimBoth ifNotEmpty: [ :it | 
		it first = $/ ifTrue: [ ^ self handleCommandIn: msg ] ].
	self handleTextMessage: msg
building
build

	result := nil.
	spec at: 'message' ifPresent: [ ^ self buildMessageBasedUpdate ].
	spec at: 'my_chat_member' ifPresent: [ 
		self buildBotMemberStatusUpdated.
		^ self ].
	result := UnknownUpdate new rawSpec: spec
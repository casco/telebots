building
build

	spec at: 'message' ifPresent: [ 
		(spec at: 'message')
			at: 'new_chat_member'
			ifPresent: [ ^ self buildMembersChangedUpdate ].
		^ self buildMessageReceivedUpdate ].
	spec
		at: 'my_chat_member'
		ifPresent: [ ^ self buildBotStatusUpdated ].
	(UnexpectedUpdateException with: spec) signal